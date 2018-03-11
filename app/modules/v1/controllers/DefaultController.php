<?php

namespace app\modules\v1\controllers;

use app\controllers\BaseController;

/**
 * Default controller for the `v1` module
 */
class DefaultController extends BaseController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return ['hello v1!'];
    }
}
