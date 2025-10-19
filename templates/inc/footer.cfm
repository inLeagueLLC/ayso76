<cfoutput>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-2 col-sm-3">
                <img src="#m.siteConfig('ThemeAssetPath')#/images/footer-logo.png" class="img-fluid mx-auto d-block">
            </div>
            <div class="col-md-2 col-sm-3">
            #m.dspObject(object='component', objectid='Footer AYSO')#
            </div>
            <div class="col-md-4 col-sm-3">
                <div class="footer-cta text-center">
                #m.dspObject(object='component', objectid='Join Board')#
                </div>
            </div>
            <div class="col-md-3 col-sm-3">
            #m.dspObject(object='component', objectid='Colophon')#
            </div>
        </div>
    </div>
</footer>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

<!-- Begin Constant Contact Active Forms -->
<script> var _ctct_m = "5311d8bb7b81cf49a91ff666f7438063"; </script>
<script id="signupScript" src="//static.ctctcdn.com/js/signup-form-widget/current/signup-form-widget.min.js" async defer></script>
<!-- End Constant Contact Active Forms -->

<script>
 $('button.navbar-toggler').click(function(){
   $('.wrap-for-mobile-menu').toggleClass('show');
   $('.mobile-collapse').toggleClass('show');
   $('body').toggleClass('absolute-fix');
 });

<script>
/* --- Mobile dropdown: 1st click opens, 2nd action follows --- */
/* Also supports desktop mice when the mobile menu/layout is active */
/* CF-safe: doubled ## in CSS selectors inside strings */
document.addEventListener('DOMContentLoaded', function () {
  var nav = document.querySelector('##navbarMobileNav');
  if (!nav) return;

  // When should this logic run?
  //  - touch/coarse pointers (phones/tablets), OR
  //  - small viewport (acts like mobile), OR
  //  - when your mobile menu is actively open (classes you toggle)
  var mqMobileWidth = window.matchMedia('(max-width: 900px)');
  function isMobileMenuActive() {
    return (
      window.matchMedia('(hover: none), (pointer: coarse)').matches ||
      mqMobileWidth.matches ||
      document.body.classList.contains('absolute-fix') ||
      document.querySelector('.wrap-for-mobile-menu.show') ||
      document.querySelector('.mobile-collapse.show')
    );
  }

  // Close siblings
  function closeOthers(currentLI) {
    var openLis = nav.querySelectorAll('.nav-list li.open');
    openLis.forEach(function (li) {
      if (li !== currentLI) {
        li.classList.remove('open');
        var a = li.querySelector(':scope > a[aria-expanded="true"]');
        if (a) a.setAttribute('aria-expanded', 'false');
        if (a && a.dataset) delete a.dataset.firstTap;
      }
    });
  }

  // Wire up links that own a submenu
  var links = Array.prototype.slice.call(nav.querySelectorAll('.nav-list li > a'));
  links.forEach(function (link) {
    var submenu = link.nextElementSibling;
    if (!submenu || !submenu.classList.contains('dropdown-menu')) return;

    // mark parent so CSS can draw/rotate a caret
    link.parentElement.classList.add('has-sub');

    // a11y
    link.setAttribute('aria-haspopup', 'menu');
    link.setAttribute('aria-expanded', 'false');

    // CLICK: single click opens when in mobile context
    link.addEventListener('click', function (e) {
      if (!isMobileMenuActive()) return; // let desktop normal nav work

      var li = link.parentElement;
      var isOpen = li.classList.contains('open');
      var firstTapDone = link.dataset.firstTap === '1';

      // If closed: open and block navigation
      if (!isOpen) {
        e.preventDefault();
        closeOthers(li);
        li.classList.add('open');
        link.setAttribute('aria-expanded', 'true');
        link.dataset.firstTap = '1'; // mark first click/tap
        return;
      }

      // Already open:
      if (!firstTapDone) {
        // Edge case: open but not marked — treat like first tap
        e.preventDefault();
        link.dataset.firstTap = '1';
      } else {
        // Second *click* will be handled by dblclick (mouse) or allow default here (touch)
        // For touch, we allow the second tap to follow normally.
        // For mouse, we prevent here so dblclick can take over cleanly.
        if (window.matchMedia('(hover: hover) and (pointer: fine)').matches) {
          e.preventDefault();
        } else {
          // touch devices: let it navigate
          delete link.dataset.firstTap;
        }
      }
    });

    // DBLCLICK: on desktop mouse while in "mobile" context, navigate
    link.addEventListener('dblclick', function (e) {
      if (!isMobileMenuActive()) return;
      // Only intercept when this link controls a submenu and it is open
      var li = link.parentElement;
      if (!li.classList.contains('open')) return;

      e.preventDefault();
      // clear state
      delete link.dataset.firstTap;
      link.setAttribute('aria-expanded', 'false');
      li.classList.remove('open');
      // follow the link
      window.location.href = link.href;
    });
  });

  // Click/tap outside to close
  document.addEventListener('click', function (evt) {
    if (!nav.contains(evt.target)) {
      nav.querySelectorAll('.nav-list li.open').forEach(function (li) {
        li.classList.remove('open');
        var a = li.querySelector(':scope > a[aria-expanded="true"]');
        if (a) a.setAttribute('aria-expanded', 'false');
        if (a && a.dataset) delete a.dataset.firstTap;
      });
    }
  }, { passive: true });

  // If the viewport crosses the mobile width boundary, clear stale state
  mqMobileWidth.addEventListener('change', function () {
    nav.querySelectorAll('.nav-list li.open').forEach(function (li) {
      li.classList.remove('open');
      var a = li.querySelector(':scope > a[aria-expanded="true"]');
      if (a) a.setAttribute('aria-expanded', 'false');
      if (a && a.dataset) delete a.dataset.firstTap;
    });
  });
});
</script>

<style>
/* Show/animate carets when:
   - device is touch/coarse, OR
   - viewport is narrow (<=900px) so desktop acts like mobile */
@media (hover: none), (pointer: coarse), (max-width: 900px) {
  ##navbarMobileNav .nav-list li.has-sub > a {
    position: relative;
    padding-right: 1.25rem; /* room for caret */
  }
  ##navbarMobileNav .nav-list li.has-sub > a::after {
    content: "";
    position: absolute;
    right: 0.35rem;
    top: 50%;
    transform: translateY(-50%) rotate(0deg);
    transition: transform 200ms ease;
    width: 0; height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 6px solid currentColor; /* small down arrow */
    pointer-events: none; /* clicks go to the link */
  }
  ##navbarMobileNav .nav-list li.open > a::after {
    transform: translateY(-50%) rotate(180deg);
  }
  .dropdown-toggle::after { display: none; }
}
</style>
</cfoutput>
<script>
(function () {
  // ====== CONFIG (CF-safe) ======
  const NAV_ROOT_ID  = 'navbarMobileNav';
  const TOGGLE_CLASS = 'dropdown-toggle';
  const MENU_CLASS   = 'dropdown-menu';
  const LINK_SELECTOR = 'a';
  const MOBILE_MAX_WIDTH = 767;
  const DELAY_MS = 450;
  const ROOT_GUARD_CLASS = 'tap-guard-active';

  // ====== STATE ======
  let guardUntil = 0;
  let openToggle = null;
  const now = () => performance.now();
  const isMobile = () => window.innerWidth <= MOBILE_MAX_WIDTH;
  const inGuard  = () => isMobile() && now() < guardUntil;
  const navRoot  = () => document.getElementById(NAV_ROOT_ID);

  function startGuard() {
    if (!isMobile()) return;
    guardUntil = now() + DELAY_MS;
    const root = navRoot();
    if (root) root.classList.add(ROOT_GUARD_CLASS);
    clearTimeout(startGuard._t);
    startGuard._t = setTimeout(() => {
      const r = navRoot();
      if (r) r.classList.remove(ROOT_GUARD_CLASS);
    }, DELAY_MS + 10);
  }

  function findMenu(toggleEl) {
    if (!toggleEl) return null;
    const scope = toggleEl.closest('li, .nav-item, .dropdown') || toggleEl;
    return scope ? scope.querySelector('.' + MENU_CLASS) : null;
  }

  // --- Anim helpers ---
  function prepMenuForAnimation(menu) {
    menu.style.overflow = 'hidden';
    menu.style.willChange = 'height, opacity, transform';
    menu.style.transition = 'height 220ms ease, opacity 180ms ease, transform 180ms ease';
    menu.style.transformOrigin = 'top';
  }

  function openMenu(toggleEl) {
    const menu = findMenu(toggleEl);
    if (!menu) return;

    closeAllMenus(toggleEl);
    prepMenuForAnimation(menu);

    menu.style.display   = 'block';
    menu.style.height    = '0px';
    menu.style.opacity   = '0';
    menu.style.transform = 'translateY(-4px)';

    const targetHeight = menu.scrollHeight;

    requestAnimationFrame(() => {
      toggleEl.setAttribute('aria-expanded', 'true');
      toggleEl.classList.add('is-open');
      menu.classList.add('show');
      menu.style.height    = targetHeight + 'px';
      menu.style.opacity   = '1';
      menu.style.transform = 'translateY(0)';
    });

    const done = (e) => {
      if (e.propertyName !== 'height') return;
      menu.style.height = 'auto';
      menu.removeEventListener('transitionend', done);
    };
    menu.addEventListener('transitionend', done);

    openToggle = toggleEl;
  }

  function closeMenu(toggleEl) {
    const menu = findMenu(toggleEl);
    if (!menu) return;

    prepMenuForAnimation(menu);
    menu.style.height    = menu.scrollHeight + 'px';
    menu.style.opacity   = '1';
    menu.style.transform = 'translateY(0)';
    menu.offsetHeight; // reflow

    requestAnimationFrame(() => {
      menu.style.height    = '0px';
      menu.style.opacity   = '0';
      menu.style.transform = 'translateY(-4px)';
      toggleEl.setAttribute('aria-expanded', 'false');
      toggleEl.classList.remove('is-open');
      menu.classList.remove('show');
    });

    const done = (e) => {
      if (e.propertyName !== 'height') return;
      menu.style.display    = 'none';
      menu.style.transition = '';
      menu.style.height     = '';
      menu.style.opacity    = '';
      menu.style.transform  = '';
      menu.style.overflow   = '';
      menu.style.willChange = '';
      menu.removeEventListener('transitionend', done);
    };
    menu.addEventListener('transitionend', done);

    if (openToggle === toggleEl) openToggle = null;
  }

  function closeAllMenus(exceptToggle) {
    const root = navRoot();
    if (!root) return;
    root.querySelectorAll('.' + TOGGLE_CLASS + '.is-open').forEach(t => {
      if (t !== exceptToggle) closeMenu(t);
    });
  }

  function isInside(el, container) { return !!(el && container && container.contains(el)); }
  function getToggleFromTarget(target) { return target.closest('.' + TOGGLE_CLASS); }
  function getMenuLinkFromTarget(target) {
    const link = target.closest(LINK_SELECTOR);
    if (!link) return null;
    return link.closest('.' + MENU_CLASS) ? link : null;
  }

  // ====== HANDLERS ======
  function onPointerDownWithinNav(e) {
    if (!isMobile()) return;
    const root = navRoot();
    if (!root) return;

    const target = e.target;
    const clickedToggle   = getToggleFromTarget(target);
    const clickedMenuLink = getMenuLinkFromTarget(target);

    // Tapping a toggle
    if (clickedToggle) {
      if (inGuard() && clickedToggle !== openToggle) {
        e.preventDefault(); e.stopPropagation(); return false;
      }
      const isOpen = clickedToggle.classList.contains('is-open');

      if (!isOpen) {
        e.preventDefault(); e.stopPropagation();
        openMenu(clickedToggle);
        startGuard();
        return false;
      } else {
        if (inGuard()) { e.preventDefault(); e.stopPropagation(); return false; }
      }
    }

    // Tapping a link inside an open menu very soon after open
    if (clickedMenuLink) {
      if (inGuard()) { e.preventDefault(); e.stopPropagation(); return false; }
      // Close on navigate
      closeAllMenus();
    }
  }

  // NEW: close on true outside *click* only (not on pointerdown)
  function onDocumentClick(e) {
    if (!isMobile()) return;
    const root = navRoot();
    if (!root) return;
    if (!isInside(e.target, root) && openToggle) {
      closeAllMenus();
      startGuard();
    }
  }

  // Prevent outside-close while scrolling menu:
  // Stop bubbling of start/end events inside a menu so document click won't see them as outside.
  function attachMenuScrollGuards(root) {
    root.querySelectorAll('.' + MENU_CLASS).forEach(m => {
      m.addEventListener('pointerdown', e => e.stopPropagation(), { passive: true });
      m.addEventListener('pointerup',   e => e.stopPropagation(), { passive: true });
      m.addEventListener('click',       e => e.stopPropagation(), true); // capture
      // Allow natural scrolling
    });
  }

  function onKeyDown(e) {
    if (e.key === 'Escape' && openToggle) { closeAllMenus(); startGuard(); }
  }

  function onResize() {
    if (!isMobile()) {
      closeAllMenus();
      guardUntil = 0;
      const root = navRoot();
      if (root) root.classList.remove(ROOT_GUARD_CLASS);
    }
  }

  // ====== INIT ======
  document.addEventListener('DOMContentLoaded', function () {
    const root = navRoot();
    if (!root) return;

    root.querySelectorAll('.' + MENU_CLASS).forEach(m => { m.style.display = 'none'; });

    const passiveFalse = { passive: false };
    root.addEventListener('pointerdown', onPointerDownWithinNav, passiveFalse);
    document.addEventListener('click', onDocumentClick, true); // close on real outside clicks only
    document.addEventListener('keydown', onKeyDown, false);
    window.addEventListener('resize', onResize);

    attachMenuScrollGuards(root);

    console.log('Mobile nav: scroll-safe guard + transitions loaded.');
  });
})();
</script>
