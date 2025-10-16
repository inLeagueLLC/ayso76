<cfoutput>
<ul class="nav-list nav">
   <li class="nav-item"><a class="nav-link" href="/">Home</a></li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/program-info">Program Info</a>
        <ul class="dropdown-menu dropdown-menu-lg container-fluid">
            <cfset feed = $.getBean('feed').loadBy(name='GeneralPgSubmenuProgramsNavItem')>
            <cfset it = feed.getIterator()>
            <cfif it.hasNext()>
            <div class="row">
              <div class="col-sm-4">
                <li class="sub-nav-header">Program Info</li>
                <cfloop condition="it.hasNext()">
                <cfset item = it.next()>
                   <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                     <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                     <!--- This is where you can specify how deep you want to go  --->
                     #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                   </li>
                </cfloop>
                </cfif>
               </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='CompRulesPgSubmenuProgramsNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">Region & Competition Rules</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                     </li>
                   </cfloop>
                   </cfif>
                </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='AddInfoProgramSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">Additional Info</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                    </li>
                   </cfloop>
                   </cfif>
                </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='AddProgramsProgramSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">More Programs</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                     </li>
                   </cfloop>
                   </cfif>
                </div>
              </div>
        </ul>
    </li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/register">Register</a>
        <ul class="dropdown-menu">
        <cfset feed = $.getBean('feed').loadBy(name='RegistrationSubNavItems')>
        <cfset it = feed.getIterator()>
        <cfif it.hasNext()>
        <cfloop condition="it.hasNext()">
            <cfset item = it.next()>
            <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                <a href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                <!--- This is where you can specify how deep you want to go  --->
                #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
            </li>
        </cfloop>
        </cfif>
        </ul>
    </li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/coach">Coaches</a>
        <ul class="dropdown-menu">
            <cfset feed = $.getBean('feed').loadBy(name='CoachSubNavItem')>
            <cfset it = feed.getIterator()>
            <cfif it.hasNext()>
            <cfloop condition="it.hasNext()">
            <cfset item = it.next()>
                <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                    <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                    #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                </li>
            </cfloop>
            </cfif>
        </ul>
    </li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/referee">Referees</a>
        <ul class="dropdown-menu">
            <cfset feed = $.getBean('feed').loadBy(name='RefSubNavItem')>
            <cfset it = feed.getIterator()>
            <cfif it.hasNext()>
            <cfloop condition="it.hasNext()">
            <cfset item = it.next()>
                <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                    <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                    #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                </li>
            </cfloop>
            </cfif>
        </ul>
    </li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/volunteer">Volunteer</a>
        <ul class="dropdown-menu">
            <cfset feed = $.getBean('feed').loadBy(name='VolSubNavItem')>
            <cfset it = feed.getIterator()>
            <cfif it.hasNext()>
            <cfloop condition="it.hasNext()">
            <cfset item = it.next()>
                <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                    <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                    #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                </li>
            </cfloop>
            </cfif>
        </ul>
    </li>
    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/schedules">Schedules / Fields</a>
        <ul class="dropdown-menu">
        <cfset feed = $.getBean('feed').loadBy(name='SchedulesSubNavItem')>
        <cfset it = feed.getIterator()>
        <cfif it.hasNext()>
        <cfloop condition="it.hasNext()">
        <cfset item = it.next()>
            <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
            </li>
        </cfloop>
        </cfif>
        </ul>
    </li>

    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/competitive-programs">Competitive Programs</a>
        <ul class="dropdown-menu dropdown-menu-lg container-fluid">
            <cfset feed = $.getBean('feed').loadBy(name='PostSeasonSubNavItem')>
            <cfset it = feed.getIterator()>
            <cfif it.hasNext()>
            <div class="row">
              <div class="col-sm-4">
                <li class="sub-nav-header">Post-Season</li>
                <cfloop condition="it.hasNext()">
                <cfset item = it.next()>
                   <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                     <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                     <!--- This is where you can specify how deep you want to go  --->
                     #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                   </li>
                   </cfloop>
                   </cfif>
                </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='ExtraSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">Extra</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                     </li>
                   </cfloop>
                   </cfif>
                </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='AllianceSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">Alliance</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                    </li>
                   </cfloop>
                   </cfif>
                </div>
                <div class="col-sm-4">
                    <cfset feed = $.getBean('feed').loadBy(name='UnitedSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <li class="sub-nav-header">United</li>
                   <cfloop condition="it.hasNext()">
                   <cfset item = it.next()>
                    <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                        <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                        <!--- This is where you can specify how deep you want to go  --->
                        #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                     </li>
                   </cfloop>
                   </cfif>
                </div>
              </div>
        </ul>
    </li>

    <li class="nav-item dropdown-toggle"><a class="nav-link" href="/cup">Sportsmanship Cup</a>
        <ul class="dropdown-menu dropdown-menu-lg container-fluid dropdown-left">
                    <cfset feed = $.getBean('feed').loadBy(name='GeneralCupSubNavItem')>
                    <cfset it = feed.getIterator()>
                    <cfif it.hasNext()>
                    <div class="row">
                      <div class="col-sm-4">
                        <li class="sub-nav-header">General</li>
                        <cfloop condition="it.hasNext()">
                        <cfset item = it.next()>
                           <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                             <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                             <!--- This is where you can specify how deep you want to go  --->
                             #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                           </li>
                        </cfloop>
                        </cfif>
                       </div>
                    <!--    <div class="col-sm-4">
                        <cfset feed = $.getBean('feed').loadBy(name='TeamsCupSubNavItem')>
                        <cfset it = feed.getIterator()>
                        <cfif it.hasNext()>
                          <li class="sub-nav-header">Teams</li>
                           <cfloop condition="it.hasNext()">
                           <cfset item = it.next()>
                             <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                                <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                                <!--- This is where you can specify how deep you want to go  --->
                                #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                             </li>
                           </cfloop>
                           </cfif>
                        </div> -->
                        <div class="col-sm-4">
                            <cfset feed = $.getBean('feed').loadBy(name='refereesCupSubNavItem')>
                            <cfset it = feed.getIterator()>
                            <cfif it.hasNext()>
                            <li class="sub-nav-header">Referees</li>
                           <cfloop condition="it.hasNext()">
                           <cfset item = it.next()>
                            <li<cfif $.content('contentid') eq item.getContentID()> class="active current"</cfif>>
                                <a target="#item.getTarget()#" href="#item.getURL()#">#HTMLEditFormat(item.getMenuTitle())#</a>
                                <!--- This is where you can specify how deep you want to go  --->
                                #$.dspNestedNav(contentID=item.getContentID(), viewDepth=2)#
                            </li>
                           </cfloop>
                           </cfif>
                        </div>
                      </div>
                </ul>
    </li>
</ul>
</cfoutput>

<script>
(function () {
  var MOBILE_ONLY = window.matchMedia('(max-width: 991.98px)');
  var GUARD_MS = 1000; // tweak if needed
  var guardTimer = null;

  function addGuard(scope) {
    if (!MOBILE_ONLY.matches) return;
    // scope = element that contains the links (your navbar)
    scope.classList.add('tap-guard');
    clearTimeout(guardTimer);
    guardTimer = setTimeout(function () {
      scope.classList.remove('tap-guard');
    }, GUARD_MS);
  }

  // 1) Guard when the hamburger / navbar toggler is used
  var togglers = document.querySelectorAll('[data-bs-toggle="collapse"], .navbar-toggler');
  togglers.forEach(function (btn) {
    btn.addEventListener('click', function () {
      var navRoot = document.querySelector('.navbar') || document.body;
      addGuard(navRoot);
    });
  });

  // 2) Guard when a dropdown parent is tapped to expand its submenu
  // Works whether you use Bootstrap or custom dropdowns.
  document.addEventListener('click', function (e) {
    var link = e.target.closest('.nav-item.dropdown > a, .has-submenu > a');
    if (!link) return;

    // If this tap is meant to toggle (not navigate), prevent navigation,
    // open the submenu, and add a guard so the next tap doesn't immediately fire.
    var submenu = link.parentElement.querySelector('.dropdown-menu, .submenu');
    if (submenu && MOBILE_ONLY.matches) {
      // Heuristic: if submenu is hidden, first tap opens it and doesn’t navigate.
      var isHidden = getComputedStyle(submenu).display === 'none' ||
                     submenu.hidden ||
                     !submenu.offsetParent;

      if (isHidden) {
        e.preventDefault();
        // Toggle open (Bootstrap) or custom:
        // For Bootstrap 4/5:
        link.dispatchEvent(new Event('mouseenter')); // optional nudge
        submenu.style.display = 'block'; // fallback if you have custom dropdowns
        addGuard(document.querySelector('.navbar') || document.body);
      }
    }
  }, true); // use capture to run before bubbling click handlers
})();
</script>
