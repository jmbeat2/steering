<?php

namespace Config;

use CodeIgniter\Config\Filters as BaseFilters;
use CodeIgniter\Filters\CSRF;
use CodeIgniter\Filters\DebugToolbar;
use CodeIgniter\Filters\Honeypot;
use CodeIgniter\Filters\SecureHeaders;
use App\Filters\AuthFilter;
use CodeIgniter\Filters\ForceHTTPS;
use CodeIgniter\Filters\PageCache;
use CodeIgniter\Filters\PerformanceMetrics;

class Filters extends BaseFilters
{
    public array $aliases = [
        'csrf'          => CSRF::class,
        'toolbar'       => DebugToolbar::class,
        'honeypot'      => Honeypot::class,
        'secureheaders' => SecureHeaders::class,
        'auth' => \App\Filters\AuthFilter::class,
        'forcehttps'    => ForceHTTPS::class,
        'pagecache'     => PageCache::class,
        'performance'   => PerformanceMetrics::class,
    ];

    public array $globals = [
        'before' => [
            'csrf' => ['except' => ['Empusersc/authenticate']] // Exclude CSRF for login only
        ],
        'after' => [],
    ];

    public array $filters = [
        'auth' => ['before' => ['views/defectviews', 'defects/*']], // Protect routes
    ];
}
