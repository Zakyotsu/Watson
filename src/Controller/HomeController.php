<?php

namespace Watson\Controller;

use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

class HomeController {

    /**
     * Home page controller.
     *
     * @param Application $app Silex application
     */
    public function indexAction($page, Application $app) {
        $links = $app['dao.link']->findLinksByRange(12, $page);
        return $app['twig']->render('index.html.twig', array(
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

    public function logoutAction($page, Request $request, Application $app) {
       $page = 0;
        $links = $app['dao.link']->findLinksByRange(12, $page);
        return $app['twig']->render('index.html.twig', array(
            'links' => $links,
            'page' => $page
           
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
        return $app['twig']->render('rss.xml.twig', array(
            'links' => $links
        ));
    }
}
