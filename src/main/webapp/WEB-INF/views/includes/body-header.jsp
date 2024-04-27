<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
	<c:if test="${msg != null }">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	</c:if>
    <header id="site-header" class="main-header fixed-top">
      <div class="container w3HeaderLogoEd">
        <nav class="navbar navbar-expand-lg navbar-light">
          <h1>
            <a class="navbar-brand" href="https://wp.w3layouts.com/dressup/">
              2SC<span>-Match</span>
            </a>
          </h1>

          <button
            class="navbar-toggler collapsed"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarScroll"
            aria-controls="navbarScroll"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
            <span class="navbar-toggler-icon fa icon-close fa-times"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarScroll">
            <ul
              id="menu-main-menu"
              class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll"
            >
              <li
                id="menu-item-22"
                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home nav-item nav-item-22"
              >
                <a href="https://wp.w3layouts.com/dressup/" class="nav-link"
                  >Home</a
                >
              </li>
              <li
                id="menu-item-23"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-23"
              >
                <a
                  href="https://wp.w3layouts.com/dressup/about-page/"
                  class="nav-link"
                  >CHAT</a
                >
              </li>
              <li
                id="menu-item-24"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-24"
              >
                <a
                  href="https://wp.w3layouts.com/dressup/services-page/"
                  class="nav-link"
                  >MATCHING</a
                >
              </li>
              <li
                id="menu-item-27"
                class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-27"
              >
                <a
                  href="https://wp.w3layouts.com/dressup/contact-page/"
                  class="nav-link"
                  >BOARD</a
                >
              </li>
              <li
                id="menu-item-54"
                class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children dropdown nav-item nav-item-54"
              >
                <a
                  href="https://wp.w3layouts.com/dressup/pages-2/"
                  class="nav-link dropdown-toggle"
                  data-bs-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                  >Pages</a
                >
                <ul class="dropdown-menu depth_0">
                  <li
                    id="menu-item-29"
                    class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-29"
                  >
                    <a
                      href="https://wp.w3layouts.com/dressup/blog-posts/"
                      class="dropdown-item"
                      >Blog posts</a
                    >
                  </li>
                  <li
                    id="menu-item-25"
                    class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-25"
                  >
                    <a
                      href="https://wp.w3layouts.com/dressup/404-page/"
                      class="dropdown-item"
                      >404 page</a
                    >
                  </li>
                  <li
                    id="menu-item-26"
                    class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-26"
                  >
                    <a
                      href="https://wp.w3layouts.com/dressup/elements-page/"
                      class="dropdown-item"
                      >Elements page</a
                    >
                  </li>
                  <li
                    id="menu-item-28"
                    class="menu-item menu-item-type-post_type menu-item-object-page nav-item nav-item-28"
                  >
                    <a
                      href="https://wp.w3layouts.com/dressup/single-landing-page/"
                      class="dropdown-item"
                      >Landing page</a
                    >
                  </li>
                </ul>
              </li>
            </ul>
            <!-- search-form -->
            <form
              action="https://wp.w3layouts.com/dressup/"
              method="GET"
              class="d-flex search-header HeaderSearch"
            >
              <input
                class="form-control"
                type="search"
                placeholder="Enter Keyword..."
                aria-label="Search"
                name="s"
                required
              />
              <button class="btn btn-style" type="submit">
                <i class="fas fa-search"></i>
              </button>
            </form>
            <!--//search-form-->
          </div>

          <!-- toggle switch for light and dark theme -->

          <div class="cont-ser-position DarkandLight">
            <nav class="navigation">
              <div class="theme-switch-wrapper">
                <label class="theme-switch" for="checkbox">
                  <input type="checkbox" id="checkbox" />
                  <div class="mode-container">
                    <i class="gg-sun"></i>
                    <i class="gg-moon"></i>
                  </div>
                </label>
              </div>
            </nav>
          </div>
          <!-- //toggle switch for light and dark theme -->
        </nav>
      </div>
    </header>
  