<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;

class Security extends BaseConfig
{
    /**
     * CSRF Protection Method
     *
     * @var string 'cookie' or 'session'
     */
    public bool $csrfProtection = true; // Corrected to boolean

    /**
     * CSRF Token Randomization
     */
    public bool $tokenRandomize = false;

    /**
     * CSRF Token Name
     */
    public string $tokenName = 'csrf_test_name';  // Ensure this is the same in your form and Ajax request

    /**
     * CSRF Header Name
     */
    public string $headerName = 'X-CSRF-TOKEN'; // Header name for Ajax requests

    /**
     * CSRF Cookie Name
     */
    public string $cookieName = 'csrf_cookie_name';

    /**
     * CSRF Expires (in seconds)
     */
    public int $expires = 7200;

    /**
     * Regenerate CSRF Token on every submission
     */
    public bool $regenerate = true;

    /**
     * Redirect on CSRF failure
     */
    public bool $redirect = (ENVIRONMENT === 'production');
}
