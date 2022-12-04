<?php

namespace Watson\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;
use DOMDocument;


class HomeController {

    /**
     * Home page controller.
     *
     * @param Application $app Silex application
     */
    public function indexAction(Application $app) {
        $links = $app['dao.link']->findLinksByRange(3, 1);
        return $app['twig']->render('index.html.twig', array(
            'links' => $links
        ));
    }

    /**
     * Home page links details.
     *
     * @param Application $app Silex application
     */
    public function homeLinksList($page, Application $app) {
        $links = $app['dao.link']->findLinksByRange(15, $page);
        return $app['twig']->render('home_links.html.twig', array(
            'links' => $links,
            'page'  => $page
        ));
    }

    /**
     * Link details controller.
     *
     * @param integer $id Link id
     * @param Request $request Incoming request
     * @param Application $app Silex application
     */
    public function linkAction($id, Request $request, Application $app) {
        $link = $app['dao.link']->find($id);
        if ($app['security.authorization_checker']->isGranted('IS_AUTHENTICATED_FULLY')) {
            // A user is fully authenticated : he can add comments
            // Check if he's author for manage link

        }
        return $app['twig']->render('link.html.twig', array(
            'link' => $link
        ));
    }

    /**
     * Links by tag controller.
     *
     * @param integer $id Tag id
     * @param Request $request Incoming request
     * @param Application $app Silex application
     */
    public function tagAction($id, Request $request, Application $app) {
        $links = $app['dao.link']->findAllByTag($id);
        $tag   = $app['dao.tag']->findTagName($id);

        return $app['twig']->render('result_tag.html.twig', array(
            'links' => $links,
            'tag'   => $tag
        ));
    }

    /**
     * User login controller.
     *
     * @param Request $request Incoming request
     * @param Application $app Silex application
     */
    public function loginAction( Request $request, Application $app) {

        return $app['twig']->render('login.html.twig', array(
            'error'         => $app['security.last_error']($request),
            'last_username' => $app['session']->get('_security.last_username'),
            )
        );
    }

    /**
     * Link details controller.
     *
     * @param Application $app Silex application
     */
    public function rssAction(Application $app) {
        $links = $app['dao.link']->findLinksByRange(15, 1);

        $rss = '
        <?xml version="1.0" encoding="utf-8"?>
        <rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
            <channel>
                <title>Lien Watson</title>
                <link>http://localhost:1234/</link>
                <atom:link href="http://localhost:1234/rss" rel="self" type="application/rss+xml" />
                <description>Flux rss de Watson</description>';

        foreach($links as $link) {
            $rss .= '
            <item>
                <title>'. $link->getTitle() .'</title>
                <link>'. $link->getUrl() .'</link>
                <description>'. $link->getDesc() .'</description>
            </item>
            ';
        }

        $rss .= '
            </channel>
        </rss>
        ';

        return $app['twig']->render('rss.xml.twig', array(
            'rss' => $rss
        ));
    }
}
