<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><title>EmacsWiki: header2.el</title><link rel="alternate" type="application/wiki" title="Edit this page" href="http://www.emacswiki.org/emacs?action=edit;id=header2.el" />
<link type="text/css" rel="stylesheet" href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/css/bootstrap-combined.min.css" />
<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
<meta name="robots" content="INDEX,FOLLOW" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki" href="http://www.emacswiki.org/emacs?action=rss" /><link rel="alternate" type="application/rss+xml" title="EmacsWiki: header2.el" href="http://www.emacswiki.org/emacs?action=rss;rcidonly=header2.el" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content"
      href="http://www.emacswiki.org/emacs/full.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki with page content and diff"
      href="http://www.emacswiki.org/emacs/full-diff.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Emacs Wiki including minor differences"
      href="http://www.emacswiki.org/emacs/minor-edits.rss" />
<link rel="alternate" type="application/rss+xml"
      title="Changes for header2.el only"
      href="http://www.emacswiki.org/emacs?action=rss;rcidonly=header2.el" /><meta name="viewport" content="width=device-width" />
<script type="text/javascript" src="/outliner.0.5.0.62-toc.js"></script>
<script type="text/javascript">

  function addOnloadEvent(fnc) {
    if ( typeof window.addEventListener != "undefined" )
      window.addEventListener( "load", fnc, false );
    else if ( typeof window.attachEvent != "undefined" ) {
      window.attachEvent( "onload", fnc );
    }
    else {
      if ( window.onload != null ) {
	var oldOnload = window.onload;
	window.onload = function ( e ) {
	  oldOnload( e );
	  window[fnc]();
	};
      }
      else
	window.onload = fnc;
    }
  }

  var initToc=function() {

    var outline = HTML5Outline(document.body);
    if (outline.sections.length == 1) {
      outline.sections = outline.sections[0].sections;
    }

    if (outline.sections.length > 1
	|| outline.sections.length == 1
           && outline.sections[0].sections.length > 0) {

      var toc = document.getElementById('toc');

      if (!toc) {
	var divs = document.getElementsByTagName('div');
	for (var i = 0; i < divs.length; i++) {
	  if (divs[i].getAttribute('class') == 'toc') {
	    toc = divs[i];
	    break;
	  }
	}
      }

      if (!toc) {
	var h2 = document.getElementsByTagName('h2')[0];
	if (h2) {
	  toc = document.createElement('div');
	  toc.setAttribute('class', 'toc');
	  h2.parentNode.insertBefore(toc, h2);
	}
      }

      if (toc) {
        var html = outline.asHTML(true);
        toc.innerHTML = html;
      }
    }
  }

  addOnloadEvent(initToc);
  </script>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.0/js/bootstrap.min.js"></script>
<script src="http://emacswiki.org/emacs/emacs-bootstrap.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head><body class="http://www.emacswiki.org/emacs"><div class="header"><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span>
<!-- Google CSE Search Box Begins  -->
<form class="tiny" action="http://www.google.com/cse" id="searchbox_004774160799092323420:6-ff2s0o6yi"><p>
<input type="hidden" name="cx" value="004774160799092323420:6-ff2s0o6yi" />
<input type="text" name="q" size="25" />
<input type="submit" name="sa" value="Search" />
</p></form>
<script type="text/javascript" src="http://www.google.com/coop/cse/brand?form=searchbox_004774160799092323420%3A6-ff2s0o6yi"></script>
<!-- Google CSE Search Box Ends -->
<h1><a title="Click to search for references to this page" rel="nofollow" href="http://www.google.com/cse?cx=004774160799092323420:6-ff2s0o6yi&amp;q=%22header2.el%22">header2.el</a></h1></div><div class="wrapper"><div class="content browse"><p class="download"><a href="http://www.emacswiki.org/emacs-en/download/header2.el">Download</a></p><pre class="code"><span class="linecomment">;;; header2.el --- Support for creation and update of file headers.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Filename: header2.el</span>
<span class="linecomment">;; Description: Support for creation and update of file headers.</span>
<span class="linecomment">;; Author: Lynn Slater</span>
<span class="linecomment">;;         Drew Adams</span>
<span class="linecomment">;; Maintainer: Drew Adams</span>
<span class="linecomment">;; Copyright (C) 1996-2013, Drew Adams, all rights reserved.</span>
<span class="linecomment">;; Copyright (C) 1989 Free Software Foundation, Inc.</span>
<span class="linecomment">;; Copyright (C) 1988 Lynn Randolph Slater, Jr.</span>
<span class="linecomment">;; Created: Tue Aug  4 17:06:46 1987</span>
<span class="linecomment">;; Version: 21.0</span>
<span class="linecomment">;; Last-Updated: Fri Dec 28 09:16:48 2012 (-0800)</span>
<span class="linecomment">;;           By: dradams</span>
<span class="linecomment">;;     Update #: 1827</span>
<span class="linecomment">;; URL: http://www.emacswiki.org/header2.el</span>
<span class="linecomment">;; Doc URL: http://emacswiki.org/AutomaticFileHeaders</span>
<span class="linecomment">;; Keywords: tools, docs, maint, abbrev, local</span>
<span class="linecomment">;; Compatibility: GNU Emacs: 20.x, 21.x, 22.x, 23.x, 24.x</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Commentary:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Support for creation and update of file headers.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Some of this code and commentary were originally written by Lynn</span>
<span class="linecomment">;; Slater as file `header.el'.  Drew Adams updated it and maintains it</span>
<span class="linecomment">;; as `header2.el'.  The original is here:</span>
<span class="linecomment">;; `http://www.emacswiki.org/cgi-bin/wiki/download/OriginalHeaderEl'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Commands (interactive functions) defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   `make-header', `make-revision', `make-divider',</span>
<span class="linecomment">;;   `make-box-comment', `update-file-header'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Other functions defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   `auto-make-header', `auto-update-file-header',</span>
<span class="linecomment">;;   `delete-and-forget-line', `header-AFS', `header-author',</span>
<span class="linecomment">;;   `header-blank', `header-code', `header-commentary',</span>
<span class="linecomment">;;   `header-compatibility', `header-copyright',</span>
<span class="linecomment">;;   `header-creation-date', `header-date-string',</span>
<span class="linecomment">;;   `header-description', `header-doc-url',`header-end-line',</span>
<span class="linecomment">;;   `header-eof', `header-file-name', `header-free-software',</span>
<span class="linecomment">;;   `header-history', `header-keywords', `header-lib-requires',</span>
<span class="linecomment">;;   `header-maintainer', `header-mode-line',</span>
<span class="linecomment">;;   `header-modification-author', `header-modification-date',</span>
<span class="linecomment">;;   `header-multiline', `header-prefix-string', `header-rcs-id',</span>
<span class="linecomment">;;   `header-rcs-log', `header-sccs', `header-shell', `header-status',</span>
<span class="linecomment">;;   `header-title', `header-toc', `header-update-count',</span>
<span class="linecomment">;;   `header-url', `header-version', `headerable-file-p',</span>
<span class="linecomment">;;   `make-box-comment', `make-divider', `make-revision',</span>
<span class="linecomment">;;   `register-file-header-action', `section-comment-start',</span>
<span class="linecomment">;;   `true-mode-name', `uniquify-list', `update-file-name',</span>
<span class="linecomment">;;   `update-last-modified-date', `update-last-modifier',</span>
<span class="linecomment">;;   `update-lib-requires', `update-write-count'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; User options (variables) defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   `header-copyright-notice', `header-date-format',</span>
<span class="linecomment">;;   `header-history-label', `header-max', `make-header-hook'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Other variables defined here:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   `file-header-update-alist', `header-auto-update-enabled',</span>
<span class="linecomment">;;   `header-multiline', `header-prefix-string', `return-to'.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; To have Emacs update file headers automatically whenever you save a</span>
<span class="linecomment">;; file, put this in your init file (~/.emacs):</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   (add-hook 'write-file-hooks 'auto-update-file-header)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; To have Emacs add a file header whenever you create a new file in</span>
<span class="linecomment">;; some mode, put this in your init file (~/.emacs):</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;   (add-hook 'emacs-lisp-mode-hook 'auto-make-header)</span>
<span class="linecomment">;;   (add-hook 'c-mode-common-hook   'auto-make-header)</span>
<span class="linecomment">;;   ...</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; From the original header.el text by Lynn Slater:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     This file is particularly useful with the file-declarations</span>
<span class="linecomment">;;     package also by Lynn Slater.  Read the first 20% of this file</span>
<span class="linecomment">;;     to learn how to customize.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     From: eddie.mit.edu!think!ames!indetech.com!lrs (Lynn Slater)</span>
<span class="linecomment">;;     To: info-gnu-emacs@prep.ai.mit.edu</span>
<span class="linecomment">;;     Subject: Automatic header creation and maintenance</span>
<span class="linecomment">;;     Date: Wed, 1 Nov 89 09:33 PST</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     Enclosed is code to automatically create and maintain file</span>
<span class="linecomment">;;     headers.  This code is cleaner and mush more easily customized</span>
<span class="linecomment">;;     than any of my previous header postings.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     New in this release are customizations that allow headers to be</span>
<span class="linecomment">;;     created and maintained from the command line.  This is good for</span>
<span class="linecomment">;;     projects with some vi die-hards or when headers are being added</span>
<span class="linecomment">;;     in mass for the first time.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     Example:</span>
<span class="linecomment">;;        cd $EMACS/lisp</span>
<span class="linecomment">;;        headers -make *.el</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     I have found file headers to be very valuable in project</span>
<span class="linecomment">;;     development.  I always know who has been where and how many</span>
<span class="linecomment">;;     times they were there.  Most often, I also know what they did.</span>
<span class="linecomment">;;     The update count and last modified date are very useful in</span>
<span class="linecomment">;;     determining the proper version of a file to use.  I have often</span>
<span class="linecomment">;;     thought that it would be easier to integrate patches from</span>
<span class="linecomment">;;     individuals to gnu tools such as gcc and g++ if I knew for</span>
<span class="linecomment">;;     certain what version of a particular file they were working</span>
<span class="linecomment">;;     from.  If all had headers, I would see the update count and</span>
<span class="linecomment">;;     date in the "diff -c" output and would be able to find or</span>
<span class="linecomment">;;     recreate the file to patch accordingly.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     In this message are three files:</span>
<span class="linecomment">;;       header.el - Emacs header functions and instructions</span>
<span class="linecomment">;;       headers.1  - Man page for command line headers useage</span>
<span class="linecomment">;;       headers    - Shell script for command-line headers.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Text by Lynn Slater, updated as needed:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     Mode-specific headers:</span>
<span class="linecomment">;;     ---------------------</span>
<span class="linecomment">;;      Not all headers need look alike.  Suppose that you have a unix script mode</span>
<span class="linecomment">;;      and want it to have a shell specifier line that all other headers do not</span>
<span class="linecomment">;;      have.  To do this, Place the following line in a hook called when the</span>
<span class="linecomment">;;      mode is invoked or in the code that establishes the mode:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;         (add-hook 'make-header-hook 'header-shell nil t)</span>

<span class="linecomment">;;      The header building blocks are sensitive to the different comment</span>
<span class="linecomment">;;      characters in different modes.</span>

<span class="linecomment">;;     Mode specific update actions:</span>
<span class="linecomment">;;     ----------------------------</span>
<span class="linecomment">;;      Suppose something needs to be automatically maintained only in certain</span>
<span class="linecomment">;;      modes.  An example is the .TH macro in man pages.  You can create mode-</span>
<span class="linecomment">;;      specific update actions by placing code like the following in the</span>
<span class="linecomment">;;      mode creation function of the mode hook.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;        (register-file-header-action</span>
<span class="linecomment">;;          "^\.TH[ \t]+[^\" \t]+[ \t]+[^\" \t]+[ \t]+\"\\([^\"]*\\)\""</span>
<span class="linecomment">;;         'update-last-modified-date-macro)</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;     Define individual header elements.  These are the building blocks</span>
<span class="linecomment">;;     used to construct a site specific header.  You may add your own</span>
<span class="linecomment">;;     functions either in this file or in your `.emacs' file.  The</span>
<span class="linecomment">;;     variable `make-header-hook' specifies the functions that will</span>
<span class="linecomment">;;     actually be called.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Note on change-control systems:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;  If you use `header2.el' in a change-control system, such as RCS,</span>
<span class="linecomment">;;  you might need to leave it checked out.  This is because any</span>
<span class="linecomment">;;  change-control keywords in the file will be expanded during</span>
<span class="linecomment">;;  check-in.  Normally, you will want those keywords to be inserted</span>
<span class="linecomment">;;  in file headers unexpanded.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Change Log:</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; 2012/08/23 dadams</span>
<span class="linecomment">;;     Added: header-doc-url.</span>
<span class="linecomment">;;     make-header-hook: Added header-doc-url to default value.</span>
<span class="linecomment">;; 2011/12/19 dadams</span>
<span class="linecomment">;;     delete-and-forget-line: Use line-end-position, not end-of-line + point.</span>
<span class="linecomment">;; 2011/11/15 dadams</span>
<span class="linecomment">;;     header-date-string:</span>
<span class="linecomment">;;       Use UTC format from http://www.w3.org/TR/NOTE-datetime.  Thx to Lennart Borgman.</span>
<span class="linecomment">;; 2011/02/03 dadams</span>
<span class="linecomment">;;     Added: header-auto-update-enabled.</span>
<span class="linecomment">;;     auto-update-file-header: Respect header-auto-update-enabled.  Thx to Le Wang.</span>
<span class="linecomment">;; 2011/01/04 dadams</span>
<span class="linecomment">;;     Removed autoload cookies from non-interactive functions.</span>
<span class="linecomment">;; 2010/08/03 dadams</span>
<span class="linecomment">;;     update-file-name: Use ---, not just -, in title line, per newer standard.</span>
<span class="linecomment">;;     make-revision: Escape ; in string, for Emacs 20 (else C-M-q problem).</span>
<span class="linecomment">;; 2010/04/12 dadams</span>
<span class="linecomment">;;     header-history-label: Change log -&gt; Change Log.</span>
<span class="linecomment">;; 2009/10/25 dadams</span>
<span class="linecomment">;;     Renamings from lib-require.el.  If you use that library, you must update it.</span>
<span class="linecomment">;;       lib-requires-header -&gt; libreq-file-header</span>
<span class="linecomment">;;       insert-lib-requires-as-comment -&gt; libreq-insert-lib-requires-as-comment</span>
<span class="linecomment">;; 2009/09/24 dadams</span>
<span class="linecomment">;;     header-multiline: Use a marker for END, and go to it after insert multiline.</span>
<span class="linecomment">;;     header-eof: Go to point-max and insert newline.</span>
<span class="linecomment">;; 2008/09/06 dadams</span>
<span class="linecomment">;;     update-write-count: Keep rest of line, after number.  Thx to Johan Vromans.</span>
<span class="linecomment">;;     Added update-VCS-version, commented out.</span>
<span class="linecomment">;; 2008/08/06 dadams</span>
<span class="linecomment">;;     header-date-string: Use %z, not %Z - the latter no longer works on Windows.</span>
<span class="linecomment">;; 2008/07/11 dadams</span>
<span class="linecomment">;;     header-title, header-file-name, header-eof:</span>
<span class="linecomment">;;       Use buffer-file-name, if available.  Thx Juan Miguel Cejuela for suggestion.</span>
<span class="linecomment">;; 2008/03/14 dadams</span>
<span class="linecomment">;;     header-free-software: Update version 2 -&gt; version 3 of GPL.</span>
<span class="linecomment">;; 2008/01/18 dadams</span>
<span class="linecomment">;;     header-creation-date: Added time zone also.  Thx to Sebastian Luque.</span>
<span class="linecomment">;;     Added: header-date-(string|format).</span>
<span class="linecomment">;;     header-creation-date, update-last-modified-date: Use header-date-format.</span>
<span class="linecomment">;; 2007/12/12 dadams</span>
<span class="linecomment">;;     INCOMPATIBLE CHANGE - If you previously used update-file-header as a</span>
<span class="linecomment">;;                           write-file-hook, change it to auto-update-file-header.</span>
<span class="linecomment">;;     Added auto-update-file-header.  Uses new update-file-header.</span>
<span class="linecomment">;;     update-file-header: Made unconditional.  Thx to Lennart Borgman.</span>
<span class="linecomment">;; 2007/03/25 dadams</span>
<span class="linecomment">;;     make-header: Use let*, so comment-end-p is bound in header-prefix-string.</span>
<span class="linecomment">;; 2006/01/13 dadams</span>
<span class="linecomment">;;     Added: header-url.</span>
<span class="linecomment">;; 2006/01/07 dadams</span>
<span class="linecomment">;;     Added :link.</span>
<span class="linecomment">;; 2005/11/04 dadams</span>
<span class="linecomment">;;     update-last-modified-date: Added timezone.</span>
<span class="linecomment">;; 2005/10/21 dadams</span>
<span class="linecomment">;;     Added header-free-software, header-multiline (vars & fns).</span>
<span class="linecomment">;;     Updated make-header-hooks.</span>
<span class="linecomment">;;     update-lib-requires:</span>
<span class="linecomment">;;       Use error msg if insert-lib-requires-as-comment errors.</span>
<span class="linecomment">;;       Made buffer-file-name filter outermost.</span>
<span class="linecomment">;;       Got rid of locate-library filter.</span>
<span class="linecomment">;;     header-code, header-eof: Include comment-end case.</span>
<span class="linecomment">;;     Changed defvar to defcustom.</span>
<span class="linecomment">;;     auto-make-header: Make sure its a file buffer.</span>
<span class="linecomment">;;     Protect lib-requires-header with boundp.</span>
<span class="linecomment">;;     Renamed make-header-hooks to make-header-hook.</span>
<span class="linecomment">;;     Cleaned up Commentary.  Added .emacs instructions, note on change control.</span>
<span class="linecomment">;;     header-prefix-string: Don't bother to bind comment-end-p.</span>
<span class="linecomment">;; 2005/10/19 dadams</span>
<span class="linecomment">;;     Increased header max default value from 2000 to 50000.</span>
<span class="linecomment">;; 2005/10/18 dadams</span>
<span class="linecomment">;;     Added: update-lib-requires, header-lib-requires, header-version.</span>
<span class="linecomment">;;     make-header-hooks:</span>
<span class="linecomment">;;       Use header-version, not header-rcs-id.  Use header-lib-requires.</span>
<span class="linecomment">;;       Don't use header-rcs-log.</span>
<span class="linecomment">;;     update-last-modifier: inlined code for non-empty-name-p.</span>
<span class="linecomment">;;     Require lib-requires.el.</span>
<span class="linecomment">;; 2004/10/01 dadams</span>
<span class="linecomment">;;     auto-make-header: not if read-only</span>
<span class="linecomment">;;     header-rcs-log: Split string so it won't be overwritten by vc.el</span>
<span class="linecomment">;;       Thanks to Steve Taylor for this fix.</span>
<span class="linecomment">;; 2004/06/04 dadams</span>
<span class="linecomment">;;     header-eof: Removed "`" and "'" around file name.</span>
<span class="linecomment">;; 1996/04/04 dadams</span>
<span class="linecomment">;;     Mods for modes like C, etc.</span>
<span class="linecomment">;;     1. make-header-hooks: Removed header-blank before: header-commentary,</span>
<span class="linecomment">;;        header-history and header-code.  Added 2 header-blank's after</span>
<span class="linecomment">;;        header-commentary.</span>
<span class="linecomment">;;     2. Added section-comment-start.</span>
<span class="linecomment">;;     3. header-file-name: Only use header-prefix-string if 1-char comment-start.</span>
<span class="linecomment">;;     4. header-commentary,header-history,header-code: Use section-comment-start.</span>
<span class="linecomment">;;     5. header-code: Only add ":\n\n\n\n\n" if 1-char comment-start.</span>
<span class="linecomment">;;     6. header-eof: Removed extra " ".</span>
<span class="linecomment">;; 1996/03/18 dadams</span>
<span class="linecomment">;;     Added defvars for return-to, explicit-shell-file-name, c-style .</span>
<span class="linecomment">;; 1996/02/12 dadams</span>
<span class="linecomment">;;     Added auto-make-header.</span>
<span class="linecomment">;; 1995/09/04 dadams</span>
<span class="linecomment">;;     Adapted to std GNU maintenance form (see file lisp-mnt.el).</span>
<span class="linecomment">;;     1) Distinguished sections from subsections.  Changed order.</span>
<span class="linecomment">;;     2) No longer use header-mode-line (conflicts with GNU maintenance std).</span>
<span class="linecomment">;;     3) Added header-eof, header-history-label.</span>
<span class="linecomment">;;     4) Removed header-purpose (use just header-commentary).</span>
<span class="linecomment">;;     5) Redefined: make-revision, header-file-name, header-history,</span>
<span class="linecomment">;;        header-rcs-id, header-sccs, header-copyright.</span>
<span class="linecomment">;; 1995/08/08 dadams</span>
<span class="linecomment">;;     Added header-maintainer, header-keywords, header-commentary, header-code.</span>
<span class="linecomment">;; 1995/08/02 dadams</span>
<span class="linecomment">;;     header-rcs -&gt; header-rcs-id, header-rcs-log, and changed order.</span>
<span class="linecomment">;; 1995/07/31 dadams</span>
<span class="linecomment">;;     1. Corrected SCCS & RCS strings (need to be uninstantiated here).\</span>
<span class="linecomment">;;     2. Added defvar for header-prefix-string (not really needed).</span>
<span class="linecomment">;;     3. Commented out stuff that needs Lynn Slater's command-line-hooks.</span>
<span class="linecomment">;; 28-Apr-1995 dadams</span>
<span class="linecomment">;;     Added default for comment-start in make-revision.</span>
<span class="linecomment">;; 11/11/89 -- Darryl Okahata, HP NMD (darrylo%hpnmd@hpcea.HP.COM)</span>
<span class="linecomment">;; 25-Sep-1989          Lynn Slater</span>
<span class="linecomment">;;    added -default-mode ahd headerable-file-p</span>
<span class="linecomment">;; 10-Sep-1989          Lynn Slater</span>
<span class="linecomment">;;    Seperated out header-mode-line and header-end.  Headers are now really</span>
<span class="linecomment">;;    easy to modify.  Added instructions for mode-specific headers.</span>
<span class="linecomment">;; 8-Aug-1989           Lynn Slater</span>
<span class="linecomment">;;    Changed structure to allow site/user customized headers</span>
<span class="linecomment">;; 24-Jun-1989          Lynn Slater</span>
<span class="linecomment">;;    restructured file, made the order of header actions not be significant.</span>
<span class="linecomment">;; 22-Jun-1989          Lynn Slater</span>
<span class="linecomment">;;    Made file header actions easier to declare</span>
<span class="linecomment">;;    Made sccs and rcs support be user settable.</span>
<span class="linecomment">;;    Added c-style support</span>
<span class="linecomment">;; 25-Jan-1989          Lynn Slater</span>
<span class="linecomment">;;    Added make-doc command</span>
<span class="linecomment">;; 25-Jan-1989          Lynn Slater</span>
<span class="linecomment">;;    made the make-revision command include the last-modified data</span>
<span class="linecomment">;; 31-Aug-1988          Lynn Slater</span>
<span class="linecomment">;;    Made the make-revision work in most modes</span>
<span class="linecomment">;;    Added the update-file-name command</span>
<span class="linecomment">;; 1-Mar-1988           Lynn Slater</span>
<span class="linecomment">;;   made the headers be as sensitive as possible to the proper</span>
<span class="linecomment">;;   comment chars.</span>
<span class="linecomment">;; 1-Mar-1988           Lynn Slater</span>
<span class="linecomment">;;   Made the mode be declared in each header</span>
<span class="linecomment">;; 26-Feb-1988          Lynn Slater</span>
<span class="linecomment">;;   added the make-revision call</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; This program is free software; you can redistribute it and/or modify</span>
<span class="linecomment">;; it under the terms of the GNU General Public License as published by</span>
<span class="linecomment">;; the Free Software Foundation; either version 3, or (at your option)</span>
<span class="linecomment">;; any later version.</span>

<span class="linecomment">;; This program is distributed in the hope that it will be useful,</span>
<span class="linecomment">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="linecomment">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="linecomment">;; GNU General Public License for more details.</span>

<span class="linecomment">;; You should have received a copy of the GNU General Public License</span>
<span class="linecomment">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="linecomment">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="linecomment">;; Floor, Boston, MA 02110-1301, USA.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;; Code:</span>

(require 'lib-requires nil t)
  <span class="linecomment">;; (no error if not found):</span>
  <span class="linecomment">;; libreq-insert-lib-requires-as-comment, libreq-file-header</span>

<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;</span>

(provide 'header2)
(require 'header2)                      <span class="linecomment">; Ensure loaded before compile.</span>


<span class="linecomment">;; Quiet byte-compiler.</span>
(defvar comment-end-p)
(defvar comment-start-p)
(defvar c-style)
(defvar explicit-shell-file-name)
 
<span class="linecomment">;; User Options (Variables) --------------------------------</span>

(defgroup Automatic-File-Header nil
  "<span class="quote">File header insertion and updating.</span>"
  :group 'files :group 'editing :group 'convenience :group 'programming
  :group 'development
  :link `(url-link :tag "<span class="quote">Send Bug Report</span>"
          ,(concat "<span class="quote">mailto:</span>" "<span class="quote">drew.adams</span>" "<span class="quote">@</span>" "<span class="quote">oracle</span>" "<span class="quote">.com?subject=\
header2.el bug: \
&body=Describe bug here, starting with `emacs -q'.  \
Don't forget to mention your Emacs and library versions.</span>"))
  :link '(url-link :tag "<span class="quote">Other Libraries by Drew</span>"
          "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/DrewsElispLibraries</span>")
  :link '(url-link :tag "<span class="quote">Download</span>"
          "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/header2.el</span>")
  :link '(url-link :tag "<span class="quote">Description</span>"
          "<span class="quote">http://www.emacswiki.org/cgi-bin/wiki/AutomaticFileHeaders#header2</span>")
  :link '(emacs-commentary-link :tag "<span class="quote">Commentary</span>" "<span class="quote">header2</span>")
  )

(defcustom header-max 50000
  "<span class="quote">*Maximum number of chars to examine for header updating.</span>"
  :type 'integer :group 'Automatic-File-Header)

(defcustom header-copyright-notice nil
  "<span class="quote">*Copyright notice to be inserted into file headers.</span>"
    :type '(choice (const :tag "<span class="quote">No copyright notice (value nil)</span>" nil) string)
    :group 'Automatic-File-Header)

(defcustom header-date-format t
  "<span class="quote">*Date/time format for header timestamp.
The value can be a string, t, or nil.
A string value is passed to `format-time-string'.
t means use local time with timezone; nil means use UTC.</span>"
  :group 'Automatic-File-Header
  :type '(choice
          (const  :tag "<span class="quote">Local time, with timezone</span>" t)
          (const  :tag "<span class="quote">UTC</span>" nil)
          (string :tag "<span class="quote">Custom format</span>")))

<span class="linecomment">;; Change this as you like.</span>
<span class="linecomment">;; Note that the Elisp manual, node Library Headers, suggests putting copyright just</span>
<span class="linecomment">;; after header-description.  That is not done here, by default, because I feel that</span>
<span class="linecomment">;; copyright is not the first information people are looking for.  Otherwise, this</span>
<span class="linecomment">;; default value corresponds to what the Elisp manual recommends for Emacs Lisp.</span>
(defcustom make-header-hook '(
                              <span class="linecomment">;;header-mode-line</span>
                              header-title
                              header-blank
                              header-file-name
                              header-description
                              <span class="linecomment">;;header-status</span>
                              header-author
                              header-maintainer
                              header-copyright
                              header-creation-date
                              <span class="linecomment">;;header-rcs-id</span>
                              header-version
                              <span class="linecomment">;;header-sccs</span>
                              header-modification-date
                              header-modification-author
                              header-update-count
                              header-url
                              header-doc-url
                              header-keywords
                              header-compatibility
                              header-blank
                              header-lib-requires
                              header-end-line
                              header-commentary
                              header-blank
                              header-blank
                              header-blank
                              header-end-line
                              header-history
                              header-blank
                              header-blank
                              <span class="linecomment">;; header-rcs-log</span>
                              header-end-line
                              header-free-software
                              header-code
                              header-eof
                              )
  "<span class="quote">*Functions that insert header elements.
Each function is started on a new line and is expected to end in a new line.
Each function may insert any number of lines, but each line, including the
first, must be started with the value of `header-prefix-string'.
\(This variable holds the same value as would be returned by calling
`header-prefix-string' but is faster to access.)  Each function may set the
following global variables:

  `header-prefix-string' -- mode-specific comment sequence
  `return-to' -- character position to which point will be moved after header
                 functions are processed.  Any header function may set this,
                 but only the last setting will take effect.

It is reasonable to locally set these hooks according to certain modes.
For example, a table of contents might only apply to code development modes
and `header-shell' might only apply to shell scripts.  See instructions in
file `header2.el' to do this.</span>"
  :type 'hook :group 'Automatic-File-Header)

(defcustom header-history-label "<span class="quote">Change Log:</span>" <span class="linecomment">; Was "HISTORY:" before.</span>
  "<span class="quote">*Label introducing change log history.</span>"
  :type 'string :group 'Automatic-File-Header)

(defcustom header-free-software
  "<span class="quote">This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License as
published by the Free Software Foundation; either version 3, or
\(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; see the file COPYING.  If not, write to
the Free Software Foundation, Inc., 51 Franklin Street, Fifth
Floor, Boston, MA 02110-1301, USA.</span>"

  "<span class="quote">*Text saying that this is free software</span>"
  :type 'string :group 'Automatic-File-Header)
 
<span class="linecomment">;;; Internal variables -------------------------------------</span>

(defvar header-auto-update-enabled t
  "<span class="quote">Non-nil means file-header updating is enabled for current buffer.</span>")

(make-variable-buffer-local 'header-auto-update-enabled)
(when (boundp 'safe-local-variable-values)
  (add-to-list 'safe-local-variable-values '(header-auto-update-enabled)))

(defvar return-to nil
  "<span class="quote">Position to move point to after header fns are processed.
Any header function may set this.  The last setting will take effect.</span>")

(defvar header-multiline "<span class="quote"></span>"
  "<span class="quote">Multiline text to be inserted as a comment.
Leave the global value of this as\"\", and bind the value as needed.</span>")

(defvar file-header-update-alist ()
  "<span class="quote">Used by `update-file-header' to know what to do in a file.
Is a list of sets of cons cells where the car is a regexp string and the cdr is
the function to call if the string is found near the start of the file.</span>")

(defvar header-prefix-string "<span class="quote"></span>"
  "<span class="quote">Mode-specific comment prefix string for use in headers.</span>")
 
<span class="linecomment">;;; Functions ----------------------------------------------</span>

(defsubst header-blank ()
  "<span class="quote">Insert an empty comment to file header (after `header-prefix-string').</span>"
  (insert header-prefix-string  "<span class="quote">\n</span>"))

<span class="linecomment">;; Major section headings</span>

(defsubst section-comment-start ()
  "<span class="quote">Comment start of major section headings.</span>"
  (if (= (length comment-start) 1)      <span class="linecomment">; e.g. Lisp: ";; \n;;;"</span>
      (concat header-prefix-string "<span class="quote">\n</span>" comment-start header-prefix-string)
    (concat "<span class="quote">\n</span>" comment-start)))       <span class="linecomment">; e.g. C: "\n/*"</span>

(defsubst header-title ()
  "<span class="quote">Insert buffer's file name and leave room for a description.
In `emacs-lisp-mode', this should produce the title line for library
packages.</span>"
  (insert (concat comment-start (and (= 1 (length comment-start)) header-prefix-string)
                  (if (buffer-file-name)
                      (file-name-nondirectory (buffer-file-name))
                    (buffer-name))
                  "<span class="quote"> --- </span>" "<span class="quote">\n</span>"))
  (setq return-to  (1- (point))))

(defsubst header-file-name ()
  "<span class="quote">Insert \"Filename: \" line, using buffer's file name.</span>"
  (insert header-prefix-string "<span class="quote">Filename: </span>"
          (if (buffer-file-name)
              (file-name-nondirectory (buffer-file-name))
            (buffer-name))
          "<span class="quote">\n</span>"))

(defsubst header-description ()
  "<span class="quote">Insert \"Description: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Description: \n</span>"))

(defsubst header-author ()
  "<span class="quote">Insert current user's name (`user-full-name') as this file's author.</span>"
  (insert header-prefix-string "<span class="quote">Author: </span>" (user-full-name) "<span class="quote">\n</span>"))

(defsubst header-maintainer ()
  "<span class="quote">Insert \"Maintainer: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Maintainer: \n</span>"))

(defun header-copyright ()
  "<span class="quote">Insert `header-copyright-notice', unless nil.</span>"
  (when header-copyright-notice
    (let ((start  (point)))
      (insert header-copyright-notice)
      (save-restriction
        (narrow-to-region start (point))
        (goto-char (point-min))
        <span class="linecomment">;; Must now insert header prefix.  Cannot just replace string,</span>
        <span class="linecomment">;; because that would cause too many undo boundries.</span>
        (insert header-prefix-string)
        (while (progn (skip-chars-forward "<span class="quote">^\n</span>") (looking-at "<span class="quote">\n</span>"))
          (forward-char 1) (unless (eolp) (insert header-prefix-string)))
        (goto-char (point-max))))))

(defsubst header-creation-date ()
  "<span class="quote">Insert today's time, date, and time zone as file creation date.</span>"
  (insert header-prefix-string "<span class="quote">Created: </span>")
  (insert (header-date-string) "<span class="quote">\n</span>"))

(defun header-date-string ()
  "<span class="quote">Current date and time.</span>"
  (format-time-string
   (cond ((stringp header-date-format) header-date-format)
         (header-date-format "<span class="quote">%a %b %e %T %Y (%z)</span>")
         (t                  "<span class="quote">%Y-%m-%dT%T%z</span>")) <span class="linecomment">; An alternative: "%a %b %e %T %Y (UTC)"</span>
   (current-time)
   (not header-date-format)))

(defsubst header-rcs-id ()
  "<span class="quote">Insert lines to record RCS id information (\"$Id$\n\").</span>"
  (insert header-prefix-string "<span class="quote">Version: $Id$\n</span>"))

(defsubst header-version ()
  "<span class="quote">Insert lines to record version information.</span>"
  (insert header-prefix-string "<span class="quote">Version: \n</span>"))

(defsubst header-sccs ()
  "<span class="quote">Insert a line to record SCCS version information.</span>"
  (insert header-prefix-string "<span class="quote">Version: %W%    %E%    %U%\n</span>"))

(defsubst header-commentary ()
  "<span class="quote">Insert \"Commentary: \" line.</span>"
  (insert (concat (section-comment-start) "<span class="quote">Commentary: \n</span>")))

(defsubst header-history ()
  "<span class="quote">Insert `header-history-label' into header for use by `make-revision'.
Without this, `make-revision' inserts `header-history-label' after the header.</span>"
  (insert (concat (section-comment-start) header-history-label "<span class="quote">\n</span>")))

(defun header-free-software ()
  "<span class="quote">Insert text saying that this is free software.</span>"
  (let ((header-multiline  header-free-software))
    (header-multiline)))

<span class="linecomment">;; Variable `comment-end-p' is free here.  It is bound in `make-header'.</span>
(defun header-multiline ()
  "<span class="quote">Insert multiline comment.  The comment text is in `header-multiline'.</span>"
  (let ((lineno  1)
        beg end nb-lines)
    (beginning-of-line)
    (if comment-end-p
        (insert "<span class="quote">\n</span>" comment-start)
      (header-blank)
      (insert header-prefix-string))
    (setq beg  (point))
    (insert header-multiline)
    (setq end       (point-marker)
          nb-lines  (count-lines beg end))
    (goto-char beg)
    (forward-line 1)
    (while (&lt; lineno nb-lines)
      (insert header-prefix-string)
      (forward-line 1)
      (setq lineno  (1+ lineno)))
    (goto-char end)
    (when comment-end-p (insert "<span class="quote">\n</span>"))
    (insert comment-end)
    (insert "<span class="quote">\n</span>")
    (unless comment-end-p
      (header-blank)
      (header-end-line))))

<span class="linecomment">;; Variable `comment-end-p' is free here.  It is bound in `make-header'.</span>
(defsubst header-code ()
  "<span class="quote">Insert \"Code: \" line.</span>"
  (insert (concat (section-comment-start) "<span class="quote">Code:</span>" (and comment-end-p comment-end)
                  "<span class="quote">\n\n\n</span>")))

<span class="linecomment">;; Variable `comment-end-p' is free here.  It is bound in `make-header'.</span>
(defsubst header-eof ()
  "<span class="quote">Insert comment indicating end of file.</span>"
  (goto-char (point-max))
  (insert "<span class="quote">\n</span>")
  (unless comment-end-p (header-end-line))
  (insert comment-start
          (concat (and (= 1 (length comment-start)) header-prefix-string)
                  (if (buffer-file-name)
                      (file-name-nondirectory (buffer-file-name))
                    (buffer-name))
                  "<span class="quote"> ends here</span>"
                  (if comment-end-p comment-end "<span class="quote">\n</span>"))))

(defsubst header-modification-date ()
  "<span class="quote">Insert todays date as the time of last modification.
This is normally overwritten with each file save.</span>"
  (insert header-prefix-string "<span class="quote">Last-Updated: \n</span>"))

(defsubst header-modification-author ()
  "<span class="quote">Insert current user's name as the last person who modified the file.
This is normally overwritten with each file save.</span>"
  (insert header-prefix-string "<span class="quote">          By: \n</span>"))

(defsubst header-update-count ()
  "<span class="quote">Insert a count of the number of times the file has been saved.</span>"
  (insert header-prefix-string "<span class="quote">    Update #: 0\n</span>"))

(defsubst header-url ()
  "<span class="quote">Insert \"URL: \" line.</span>"
  (insert header-prefix-string "<span class="quote">URL: \n</span>"))

(defsubst header-doc-url ()
  "<span class="quote">Insert \"Doc URL: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Doc URL: \n</span>"))

(defsubst header-keywords ()
  "<span class="quote">Insert \"Keywords: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Keywords: \n</span>"))

(defsubst header-compatibility ()
  "<span class="quote">Insert a \"Compatibility: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Compatibility: \n</span>"))

(defsubst header-lib-requires ()
  "<span class="quote">Insert list of libraries required by this one.</span>"
  (when (and (eq major-mode 'emacs-lisp-mode) (boundp 'libreq-file-header))
    (insert libreq-file-header)         <span class="linecomment">; Defined in `lib-requires.el'.</span>
    (insert "<span class="quote">;;   None\n;;\n</span>")))

(defsubst header-status ()
  "<span class="quote">Insert a \"Status: \" line.</span>"
  (insert header-prefix-string "<span class="quote">Status: \n</span>"))

(defsubst header-toc ()
  "<span class="quote">Insert a \"Table of Contents: \" line.</span>"
  (insert header-prefix-string  "<span class="quote">Table of Contents: \n</span>" header-prefix-string
          "<span class="quote">\n</span>"))

(defsubst header-rcs-log ()
  "<span class="quote">Insert lines to record RCS log information (\"$Log$\n\").</span>"
  (insert header-prefix-string
          (concat "<span class="quote">RCS $</span>"               <span class="linecomment">; String split prevents `vc.el' overwrite.</span>
                  "<span class="quote">Log$\n</span>")))           <span class="linecomment">; Thanks to Steve Taylor.</span>

(defsubst header-AFS ()
  "<span class="quote">Insert a line to record SHAPE information.</span>"
  (insert header-prefix-string "<span class="quote">AFSID: $__Header$\n</span>"))

(defsubst header-shell ()
  "<span class="quote">Insert a kernal shell specifier line.
Uses the same shell named in `explicit-shell-file-name', the ESHELL
environment variable, the SHELL environment variable, or
'/bin/sh'.  (This is the same shell that the shell command uses.)</span>"
  (insert "<span class="quote">#!</span>" (or (and (boundp 'explicit-shell-file-name)
                        explicit-shell-file-name)
                   (getenv "<span class="quote">ESHELL</span>")
                   (getenv "<span class="quote">SHELL</span>")
                   "<span class="quote">/bin/sh</span>")
          "<span class="quote">\n</span>"))

<span class="linecomment">;; Variable `comment-start-p' is free here.  It is bound in `make-header'.</span>
(defun header-mode-line ()
  "<span class="quote">Insert a \" -*- Mode: \" line.</span>"
  (let* ((mode-declaration  (concat "<span class="quote"> -*- Mode: </span>" (true-mode-name)
                                    (if (assoc 'c-style (buffer-local-variables))
                                        (concat "<span class="quote">; C-Style: </span>" (symbol-name c-style))
                                      "<span class="quote"></span>")
                                    "<span class="quote"> -*- </span>"))
         (md-length         (length mode-declaration)))
    (insert (cond ((and comment-start (= 1 (length comment-start)))
                   <span class="linecomment">;; Assume comment start char is also fill char.</span>
                   (concat comment-start comment-start
                           (make-string (/ (- 77 md-length) 2)
                                        (aref comment-start 0))
                           mode-declaration
                           (make-string (/ (- 78 md-length) 2)
                                        (aref comment-start 0))))
                  (comment-start-p      <span class="linecomment">; Assume spaces fill the gaps.</span>
                   (concat comment-start
                           (make-string (/ (- 79 md-length
                                              (length comment-start)) 2)
                                        ?\ )
                           mode-declaration))
                  (t                    <span class="linecomment">; No comment-start.  Assume Lisp.</span>
                   (concat "<span class="quote">;;</span>" (make-string (/ (- 77 md-length) 2) ?\<span class="linecomment">;)</span>
                           mode-declaration
                           (make-string (/ (- 78 md-length) 2) ?\<span class="linecomment">;))))</span>
            "<span class="quote">\n</span>")))

<span class="linecomment">;; Variables `comment-start-p' and `comment-end-p' are free here.</span>
<span class="linecomment">;; They are bound in `make-header'.</span>
(defsubst header-end-line ()
  "<span class="quote">Insert a divider line.</span>"
  (insert (cond (comment-end-p comment-end)
                ((and comment-start (= 1 (length comment-start)))
                 (make-string 70 (aref comment-start 0)))
                (comment-start-p comment-start)
                (t (make-string 70 ?\<span class="linecomment">;)))</span>
          "<span class="quote">\n</span>"))


<span class="linecomment">;; User function to declare header actions on a save file.</span>
<span class="linecomment">;;   See examples at the end of this file.</span>
<span class="linecomment">;; Invoke from `site-init.el' or in `.emacs'.</span>
<span class="linecomment">;; -------------------------------------------------------</span>
(defun register-file-header-action (regexp function-to-call)
  "<span class="quote">Record FUNCTION-TO-CALL as the action to take if REGEXP is found
in the file header when a file is written.  The function will be called
with the cursor located just after the matched REGEXP.  Calling this twice
with the same args overwrites the previous FUNCTION-TO-CALL.</span>"
  (let ((ml  (assoc regexp file-header-update-alist)))
    (if ml
        (setcdr ml function-to-call)<span class="linecomment">;; overwrite old defn</span>
      <span class="linecomment">;; This entry is new to us.  Add to the master alist</span>
      (setq file-header-update-alist  (cons (cons regexp function-to-call)
                                            file-header-update-alist)))))


<span class="linecomment">;; Register the automatic actions to take for file headers during a save</span>
<span class="linecomment">;; See the second part of the file for explanations.</span>
<span class="linecomment">;; ---------------------------------------------------------------------</span>
<span class="linecomment">;; (register-file-header-action "^.* *\\(.*\\) *\\-\\-" 'update-file-name)</span>
<span class="linecomment">;; (register-file-header-action "\$VERSION[ \t]*=[ \t]*\"\\([0-9]+\\.\\)+"</span>
<span class="linecomment">;;                              'update-write-count)</span>

(register-file-header-action "<span class="quote">Last-Updated[ \t]*: </span>" 'update-last-modified-date)
(register-file-header-action "<span class="quote">          By[ \t]*: </span>" 'update-last-modifier)
(register-file-header-action "<span class="quote">    Update #[ \t]*: </span>" 'update-write-count)
(when (boundp 'libreq-file-header)
  (register-file-header-action libreq-file-header 'update-lib-requires))


<span class="linecomment">;; Header and file division header creation code</span>
<span class="linecomment">;; ---------------------------------------------</span>
(defun true-mode-name ()
  "<span class="quote">Return name of mode in a form such that mode may be re-established
by calling the function named by appending \"-name\" to this string.
This differs from variable `mode-name' in that this is guaranteed to
work even when the value has embedded spaces or other junk.</span>"
  (let ((major-mode-name  (symbol-name major-mode)))
    (capitalize (substring major-mode-name 0
                           (or   (string-match "<span class="quote">-mode</span>" major-mode-name)
                                 (length major-mode-name))))))

<span class="linecomment">;; Variable `comment-end-p' is free here.  It is bound in `make-header'.</span>
(defun header-prefix-string ()
  "<span class="quote">Return a mode-specific prefix string for use in headers.
Is sensitive to language-dependent comment conventions.</span>"
  (cond
    <span class="linecomment">;; E.g. Lisp.</span>
    ((and comment-start (= 1 (length comment-start)))
     (concat comment-start comment-start "<span class="quote"> </span>"))

    <span class="linecomment">;; E.g. C++ and ADA.</span>
    <span class="linecomment">;; Special case, three letter comment-start where the first and</span>
    <span class="linecomment">;; second letters are the same.</span>
    ((and comment-start (= 3 (length comment-start))
          (equal (aref comment-start 1) (aref comment-start 0)))
     comment-start)

    <span class="linecomment">;; E.g. C.</span>
    <span class="linecomment">;; Other three-letter comment-start -&gt; grab the middle character</span>
    ((and comment-start (= 3 (length comment-start)))
     (concat "<span class="quote"> </span>" (list (aref comment-start 1)) "<span class="quote"> </span>"))

    ((and comment-start (not comment-end-p))

     <span class="linecomment">;; Note: no comment end implies that the full comment-start must be</span>
     <span class="linecomment">;; used on each line.</span>
     comment-start)
    (t "<span class="quote">;; </span>")))       <span class="linecomment">; Use Lisp as default.</span>

<span class="linecomment">;; Usable as a programming language mode hook.</span>
(defun auto-make-header ()
  "<span class="quote">Call `make-header' if current buffer is empty and is a file buffer.</span>"
  (and (zerop (buffer-size)) (not buffer-read-only) (buffer-file-name)
       (make-header)))

<span class="linecomment">;;;###autoload</span>
(defun make-header ()
  "<span class="quote">Insert (mode-dependent) header comment at beginning of file.
A header is composed of a mode line, a body, and an end line.  The body is
constructed by calling the functions in `make-header-hook'.  The mode line
and end lines start and terminate block comments.  The body lines continue
the comment.</span>"
  (interactive)
  (beginning-of-buffer)                 <span class="linecomment">; Leave mark at old location.</span>
  <span class="linecomment">;; Use `let*' because `header-prefix-string' refers to `comment-end-p'.</span>
  (let* ((return-to             nil)    <span class="linecomment">; To be set by `make-header-hook'.</span>
         (comment-start-p       (and comment-start (not (string= "<span class="quote"></span>" comment-start))))
         (comment-end-p         (and comment-end (not (string= "<span class="quote"></span>" comment-end))))
         (header-prefix-string  (header-prefix-string))) <span class="linecomment">; Cache result.</span>
    (mapcar #'funcall make-header-hook)
    (when return-to (goto-char return-to))))

<span class="linecomment">;;;###autoload</span>
(defun make-revision ()
  "<span class="quote">Prepare for a new history revision.  Insert history line if inexistant.</span>"
  (interactive)
  (setq comment-start  (or comment-start "<span class="quote">\;</span>")) <span class="linecomment">; Use Lisp comment as default.</span>
  (let ((header-prefix-string   (header-prefix-string))
        (logical-comment-start  (if (= 1 (length comment-start))
                                    (concat comment-start comment-start "<span class="quote"> </span>")
                                  comment-start)))
    <span class="linecomment">;; Look for the history line</span>
    (beginning-of-buffer)               <span class="linecomment">; Leave a mark behind.</span>
    (if (re-search-forward (concat "<span class="quote">^\\(</span>" (and comment-start
                                               (regexp-quote comment-start))
                                   (regexp-quote (header-prefix-string)) "<span class="quote">\\|</span>"
                                   (if (and comment-start
                                            (not (string= "<span class="quote"></span>" comment-start)))
                                       (concat "<span class="quote">\\|</span>"
                                               (regexp-quote comment-start))
                                     "<span class="quote"></span>")
                                   "<span class="quote">\\)</span>" "<span class="quote"> *\\(</span>" header-history-label
                                   "<span class="quote">\\|HISTORY\\)</span>") <span class="linecomment">; Backward compatibility.</span>
                           header-max t)
        (end-of-line)
      <span class="linecomment">;; We did not find a history line, add one</span>
      (goto-char (point-min))
      <span class="linecomment">;; find the first line that is not part of the header</span>
      (while (and (&lt; (point) header-max)
                  (looking-at (concat "<span class="quote">[ \t]*\\(</span>"
                                      (regexp-quote (header-prefix-string))
                                      (if (and comment-start
                                               (not (string= "<span class="quote"></span>" comment-start)))
                                          (concat "<span class="quote">\\|</span>" (regexp-quote comment-start))
                                        "<span class="quote"></span>")
                                      (if (and comment-end (not (string= "<span class="quote"></span>" comment-end)))
                                          (concat "<span class="quote">\\|</span>" (regexp-quote comment-end))
                                        "<span class="quote"></span>")
                                      "<span class="quote">\\)</span>")))
        (forward-line 1))
      (insert "<span class="quote">\n</span>" logical-comment-start header-history-label)
      (save-excursion (insert "<span class="quote">\n</span>" comment-end)))
    <span class="linecomment">;; We are now on the line with the header-history-label label</span>
    (insert "<span class="quote">\n</span>" header-prefix-string
            (let ((str  (current-time-string)))
              (concat (if (equal ?\  (aref str 8))
                          (substring str 9 10)
                        (substring str 8 10))
                      "<span class="quote">-</span>" (substring str 4 7) "<span class="quote">-</span>" (substring str 20 24)))
            "<span class="quote">    </span>" (user-full-name)
            <span class="linecomment">;;"  |&gt;Ident&lt;|\n"</span>
            "<span class="quote">  \n</span>" header-prefix-string "<span class="quote">   </span>")
    <span class="linecomment">;; Add details about the history of the file before its modification</span>
    (when (save-excursion (re-search-backward "<span class="quote">Last-Updated[ \t]*: \\(.+\\)$</span>" nil t))
      (insert "<span class="quote">Last-Updated: </span>" (buffer-substring (match-beginning 1) (match-end 1)))
      (when (save-excursion (re-search-backward "<span class="quote">    Update #[ \t]*: \\([0-9]+\\)$</span>" nil t))
        (insert "<span class="quote"> #</span>" (buffer-substring (match-beginning 1) (match-end 1))))
      (when (save-excursion (re-search-backward "<span class="quote">          By[ \t]*: \\(.+\\)$</span>" nil t))
        (insert "<span class="quote"> (</span>" (buffer-substring (match-beginning 1) (match-end 1)) "<span class="quote">)</span>"))
      (insert "<span class="quote">\n</span>" header-prefix-string "<span class="quote">   </span>"))))

<span class="linecomment">;;;###autoload</span>
(defun make-divider (&optional end-col)
  "<span class="quote">Insert a comment divider line: the comment start, filler, and end.
END-COL is the last column of the divider line.</span>"
  (interactive)
  (insert comment-start)
  (when (= 1 (length comment-start)) (insert comment-start))
  (insert (make-string (max 2 (- (or end-col (- fill-column 2))
                                 (length comment-end) 2 (current-column)))
                       (aref comment-start
                             (if (= 1 (length comment-start)) 0 1))))
  (insert (concat comment-end "<span class="quote">\n</span>")))

<span class="linecomment">;;;###autoload</span>
(defun make-box-comment (&optional end-col)
  "<span class="quote">Insert an empty (mode dependent) box comment.
END-COL is the last column of the divider line.</span>"
  (interactive)
  (unless (= 0 (current-column)) (forward-line 1))
  (insert comment-start)
  (when (= 1 (length comment-start)) (insert comment-start))
  (unless (char-equal (preceding-char) ? ) (insert ? ))
  (insert (make-string (max 2 (- (or end-col fill-column ) (length comment-end)
                                 2 (current-column)))
                       (aref comment-start
                             (if (= 1 (length comment-start)) 0 1))))
  (insert "<span class="quote">\n</span>" (header-prefix-string) )
  (save-excursion
    (insert "<span class="quote">\n</span>" (header-prefix-string)
            (make-string (max 2 (- (or end-col fill-column)
                                   (length comment-end) 2 (current-column)))
                         (aref comment-start
                               (if (= 1 (length comment-start)) 0 1)))
            comment-end "<span class="quote">\n</span>")))


<span class="linecomment">;; Automatic Header update code</span>
<span class="linecomment">;; ----------------------------</span>
<span class="linecomment">;;;###autoload</span>
(defun update-file-header ()
  "<span class="quote">Update file header.
Search the first `header-max' chars in buffer using regexps in
`file-header-update-alist'.  When a match is found, apply the
corresponding function with point located just after the match.
The functions can use `match-beginning' and `match-end' to find
the strings that cause them to be invoked.</span>"
  (interactive)
  (save-excursion
    (save-restriction                   <span class="linecomment">; Only search `header-max' chars.</span>
      (narrow-to-region 1 (min header-max (1- (buffer-size))))
      (let ((patterns  file-header-update-alist))
        <span class="linecomment">;; Do not record this call as a command in command history.</span>
        (setq last-command  nil)
        (while patterns
          (goto-char (point-min))
          (when (re-search-forward (car (car patterns)) nil t)
            <span class="linecomment">;; Position cursor at end of match.</span>
            (goto-char (match-end 0))
            <span class="linecomment">;;(message "do %s" (car patterns)) (sit-for 1)</span>
            (funcall (cdr (car patterns))))
          (setq patterns  (cdr patterns)))))))

(defun auto-update-file-header ()
  "<span class="quote">Update file header if file is modified.
Call `update-file-header' if:
 `header-auto-update-enabled' is non-nil, 
 the file is modified,
 it is longer than 100 chars,
 and the buffer is not read-only.
Return nil, for use on a hook.</span>"
  (and header-auto-update-enabled
       (&gt; (buffer-size) 100)
       (buffer-modified-p)
       (not buffer-read-only)
       (update-file-header)
       nil))



<span class="linecomment">;; Define individual file header actions.  These are the building</span>
<span class="linecomment">;; blocks of automatic header maintenance.</span>
<span class="linecomment">;; -----------------------------------------------------------------------</span>
(defsubst delete-and-forget-line ()
  "<span class="quote">Delete current line and return it.  Do not add it to the `kill-ring'.</span>"
  (let* ((start  (point))
         (stop   (line-end-position))
         (str    (buffer-substring start stop)))
    (delete-region start stop)
    str))

(defun update-write-count ()
  (let* ((str  (delete-and-forget-line))
	 (rem  (read-from-string str))
	 (num  (car rem)))
    (if (numberp num)
        (insert (format "<span class="quote">%s</span>" (1+ num)) (substring str (cdr rem)))
      (insert str)
      (error "<span class="quote">Invalid number for update count `%s'</span>" str))))

<span class="linecomment">;;; ;;;###autoload</span>
<span class="linecomment">;;; (defun update-VCS-version ()</span>
<span class="linecomment">;;;   "Update VCS version, of the form $VERSION = \"NUM\".</span>
<span class="linecomment">;;; NUM is a decimal number with one or more decimal points -</span>
<span class="linecomment">;;; e.g. 3.1415.9265.  Only the part after the last decimal point is</span>
<span class="linecomment">;;; incremented."</span>
<span class="linecomment">;;;   (interactive)</span>
<span class="linecomment">;;;   (let* ((beg  (point))</span>
<span class="linecomment">;;;          (eol  (line-end-position))</span>
<span class="linecomment">;;;          (end  (re-search-forward "\\([^\\\"]+\\)\"" eol t))</span>
<span class="linecomment">;;;          (str  (buffer-substring beg (1- end)))</span>
<span class="linecomment">;;;          (num  (car (condition-case err</span>
<span class="linecomment">;;;                         (read-from-string str)</span>
<span class="linecomment">;;;                       (error (format "Invalid number for version `%s'" str))))))</span>
<span class="linecomment">;;;     (when (&gt;= num most-positive-fixnum)</span>
<span class="linecomment">;;;       (error "Version number is too large to increment: `%s'" num))</span>
<span class="linecomment">;;;     (when (and end (numberp num))</span>
<span class="linecomment">;;;       (let ((newnum (condition-case err2</span>
<span class="linecomment">;;;                         (1+ num)</span>
<span class="linecomment">;;;                       (error (format "Invalid number for version `%s'" str)))))</span>
<span class="linecomment">;;;         (replace-match (format "%d" newnum) nil nil nil 1)))))</span>

(defsubst update-last-modifier ()
  "<span class="quote">Update the line that indicates who last modified the file.</span>"
  (delete-and-forget-line)
  (insert (format "<span class="quote">%s</span>" (let ((ufn  (user-full-name)))
                         (if (and ufn (not (string= "<span class="quote"></span>" ufn))) ufn (user-login-name))))))

(defsubst update-last-modified-date ()
  "<span class="quote">Update the line that indicates the last-modified date.</span>"
  (delete-and-forget-line)
  (insert (header-date-string)))

(defun update-file-name ()
  "<span class="quote">Update the line that indicates the file name.</span>"
  (beginning-of-line)
  <span class="linecomment">;; Verify looking at a file name for this mode.</span>
  (when (looking-at (concat (regexp-quote (header-prefix-string)) "<span class="quote"> *\\(.*\\) *\\-\\-</span>"))
    (goto-char (match-beginning 1))
    (delete-region (match-beginning 1) (match-end 1))
    (insert (file-name-nondirectory (buffer-file-name)) "<span class="quote"> ---</span>")))

(defun update-lib-requires ()
  "<span class="quote">Update the lines that show what libraries are required by this one.
This uses function `libreq-insert-lib-requires-as-comment' from
library `lib-requires.el'.

Note: If a byte-compiled file (`*.elc') for the library is available,
it is used when determining library dependencies, in preference to the
source library - this is the standard behavior of `load-library'.  The
list of required libraries reflects the dependencies indicated in the
byte-compiled file, not the source file.  If the byte-compiled file is
out-of-date with respect to its required libraries, so will be the
result of `update-lib-requires'.</span>"
  (when (buffer-file-name)              <span class="linecomment">; Do nothing if not a file buffer.</span>
    (let ((lib  (file-name-sans-extension (file-name-nondirectory (buffer-file-name)))))
      (when (and (eq major-mode 'emacs-lisp-mode)
                 (fboundp 'libreq-insert-lib-requires-as-comment))
        (goto-char (match-beginning 0))
        <span class="linecomment">;; Verify looking at `libreq-file-header'"</span>
        (when (looking-at (regexp-quote libreq-file-header))
          (delete-and-forget-line) (delete-char 1)
          (delete-and-forget-line) (delete-char 1)
          (while (not (looking-at "<span class="quote">^;;$</span>")) (delete-and-forget-line) (delete-char 1))
          (delete-and-forget-line) (delete-char 1)
          (condition-case err
              <span class="linecomment">;; (let ((load-path (cons (file-name-directory (buffer-file-name))</span>
              <span class="linecomment">;;                        load-path)))</span>
              (libreq-insert-lib-requires-as-comment lib) <span class="linecomment">; Tries to load LIB.</span>
            <span class="linecomment">;;   )</span>
            <span class="linecomment">;; Typically, user just now added `provide' and must load again.</span>
            (error (insert libreq-file-header (header-prefix-string) "<span class="quote">  </span>"
                           (error-message-string err) "<span class="quote">.\n;;\n</span>"))))))))



<span class="linecomment">;;(setq file-header-update-alist nil)</span>
<span class="linecomment">;;(setq file-header-update-alist (cdr file-header-update-alist))</span>

<span class="linecomment">;; Stand-alone Headers</span>
<span class="linecomment">;; These functions give the ability to invoke headers from the command line.</span>
<span class="linecomment">;;   E.g Can use with `vi' instead of emacs.</span>
<span class="linecomment">;; -------------------------------------------------------------------------</span>
(defun headerable-file-p (file)
  "<span class="quote">Return non-nil if FILE is an existing file.</span>"
  (not (if (not (file-exists-p file))
           (message "<span class="quote">File \"%s\" does not exist.</span>" file)
         (if (file-symlink-p file)
             (message "<span class="quote">\"%s\" is a symbolic link.</span>" file)
           (if (file-directory-p file)
               (message "<span class="quote">\"%s\" is a directory.</span>" file))))))

(defsubst uniquify-list (list)
  "<span class="quote">Remove duplicates in list LIST.  Comparison is with `eq'.</span>"
  (let ((rest  list))
    (while rest
      (setcdr rest (delq (car rest) (cdr rest)))
      (setq rest  (cdr rest)))
    list))

<span class="linecomment">;;(headerable-file-p "AFS")</span>
<span class="linecomment">;;(headerable-file-p "dbiogen.el")</span>
<span class="linecomment">;;(headerable-file-p "dbiogen.elc")</span>

<span class="linecomment">;;; Rest commented out -- Needs Lynn Slater's</span>
<span class="linecomment">;;; customizations to startup.el to allow command-line-hooks.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; (defvar header-required-mode nil</span>
<span class="linecomment">;;   "The mode we force files to be in, regardless of file suffix.")</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; Define a touch-headers command.  This depends upon Lynn Slater's</span>
<span class="linecomment">;; customizations to startup.el to allow command-line-hooks.</span>
<span class="linecomment">;; ---------------------------------------------------------------</span>
<span class="linecomment">;;;(setq command-line-hooks (cons 'touch-headers command-line-hooks))</span>
<span class="linecomment">;(defun touch-headers ()</span>
<span class="linecomment">;  (if (or (string= argi "-touch") (string= argi "-touch-headers"))</span>
<span class="linecomment">;      (let ((trim-versions-without-asking t)</span>
<span class="linecomment">;            ;; Next line should have a Control-G char, not a space, before `true'.</span>
<span class="linecomment">;            (executing-macro " true"));; suppress "Mark Set" messages</span>
<span class="linecomment">;        ;; Consume all following arguments until one starts with a "-"</span>
<span class="linecomment">;        (while (and command-line-args-left</span>
<span class="linecomment">;                    (not (char-equal ?- (aref (car command-line-args-left) 0))))</span>
<span class="linecomment">;          (if (headerable-file-p (car command-line-args-left))</span>
<span class="linecomment">;              (progn</span>
<span class="linecomment">;                (set-buffer (find-file-noselect (car command-line-args-left)))</span>
<span class="linecomment">;                (make-revision)</span>
<span class="linecomment">;                (write-file nil)</span>
<span class="linecomment">;                (kill-buffer (current-buffer))))</span>
<span class="linecomment">;          (setq command-line-args-left (cdr command-line-args-left))))))</span>


<span class="linecomment">;; Define a make-headers command line option.</span>
<span class="linecomment">;; ------------------------------------------</span>
<span class="linecomment">;;;(setq command-line-hooks (cons 'make-headers command-line-hooks))</span>
<span class="linecomment">;(defun make-headers ()</span>
<span class="linecomment">;  (if (or (string= argi "-make-headers") (string= argi "-make"))</span>
<span class="linecomment">;      (let ((trim-versions-without-asking t)</span>
<span class="linecomment">;            ;; Next line should have a Control-G char, not a space, before `true'.</span>
<span class="linecomment">;            (executing-macro " true"));; suppress "Mark Set" messages</span>
<span class="linecomment">;        ;; Consume all following arguments until one starts with a "-"</span>
<span class="linecomment">;        (while (and command-line-args-left</span>
<span class="linecomment">;                    (not (char-equal ?- (aref (car command-line-args-left) 0))))</span>

<span class="linecomment">;          (if (headerable-file-p (car command-line-args-left))</span>
<span class="linecomment">;              (progn</span>
<span class="linecomment">;                (set-buffer (find-file-noselect (car command-line-args-left)))</span>
<span class="linecomment">;                (if header-required-mode</span>
<span class="linecomment">;                    (funcall header-required-mode))</span>
<span class="linecomment">;                (make-header)</span>
<span class="linecomment">;                (write-file nil)</span>
<span class="linecomment">;                (message "  Mode was %s" major-mode)</span>
<span class="linecomment">;                (kill-buffer (current-buffer))))</span>
<span class="linecomment">;          (setq command-line-args-left (cdr command-line-args-left))))))</span>

<span class="linecomment">;; Define a -default-mode command line option.</span>
<span class="linecomment">;; -------------------------------------------</span>
<span class="linecomment">;;;(setq command-line-hooks (cons 'set-header-mode command-line-hooks))</span>
<span class="linecomment">;(defun set-header-mode ()</span>
<span class="linecomment">;  (if (or (string= argi "-default-mode")</span>
<span class="linecomment">;          (string= argi "-default"))</span>
<span class="linecomment">;      (let ((trim-versions-without-asking t)</span>
<span class="linecomment">;            ;; Next line should have a Control-G char, not a space, before `true'.</span>
<span class="linecomment">;            (executing-macro " true");; suppress "Mark Set" messages</span>
<span class="linecomment">;            (mode (intern (car command-line-args-left))))</span>
<span class="linecomment">;        (if (memq mode (mapcar 'cdr auto-mode-alist))</span>
<span class="linecomment">;            (progn</span>
<span class="linecomment">;              (setq default-major-mode mode)</span>
<span class="linecomment">;              (message "Default mode is %s" default-major-mode)</span>
<span class="linecomment">;              (setq command-line-args-left (cdr command-line-args-left)))</span>
<span class="linecomment">;          (message "Mode \"%s\" is invalid.  Try one of %s" mode</span>
<span class="linecomment">;                   (uniquify-list (mapcar 'cdr auto-mode-alist)))</span>
<span class="linecomment">;          (kill-emacs 1)))))</span>


<span class="linecomment">;; Define a -required-mode command line option.</span>
<span class="linecomment">;; --------------------------------------------</span>
<span class="linecomment">;;;(setq command-line-hooks (cons 'set-header-required-mode command-line-hooks))</span>
<span class="linecomment">;(defun set-header-required-mode ()</span>
<span class="linecomment">;  (if (or (string= argi "-required-mode")</span>
<span class="linecomment">;          (string= argi "-mode"))</span>
<span class="linecomment">;      (let ((trim-versions-without-asking t)</span>
<span class="linecomment">;            ;; Next line should have a Control-G, not a space, char before `true'.</span>
<span class="linecomment">;            (executing-macro " true");; suppress "Mark Set" messages</span>
<span class="linecomment">;            (mode (intern (car command-line-args-left))))</span>
<span class="linecomment">;        (if (memq mode (mapcar 'cdr auto-mode-alist))</span>
<span class="linecomment">;            (progn</span>
<span class="linecomment">;              (setq header-required-mode mode)</span>
<span class="linecomment">;              (message "Required mode is %s" header-required-mode)</span>
<span class="linecomment">;              (setq command-line-args-left (cdr command-line-args-left)))</span>
<span class="linecomment">;          (message "Mode \"%s\" is invalid.  Try one of %s" mode</span>
<span class="linecomment">;                   (uniquify-list (mapcar 'cdr auto-mode-alist)))</span>
<span class="linecomment">;          (kill-emacs 1)))))</span>


<span class="linecomment">;; Things in the works or still to do.</span>
<span class="linecomment">;;------------------------------------</span>
<span class="linecomment">;; effort.el -- allows an "effort" to be resgistered in the mode line much</span>
<span class="linecomment">;; like the mode is.  The effort then determines some header characteristics</span>
<span class="linecomment">;; such as copyright.  Typical efforts would be 'gdb 'gcc, 'g++, 'emacs, etc.</span>
<span class="linecomment">;; This would let the copyright (and c-style) be adjusted even within</span>
<span class="linecomment">;; common modes.</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; need ez access to values in the header</span>
<span class="linecomment">;; need a headerp fcn</span>
<span class="linecomment">;;</span>
<span class="linecomment">;; auto make-revision if current user is not same as last modifier</span>
<span class="linecomment">;;   this would give a history of who touched what.</span>


<span class="linecomment">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="linecomment">;;; header2.el ends here</span></span></pre></div><div class="wrapper close"></div></div><div class="footer"><hr /><span class="gotobar bar"><a class="local" href="http://www.emacswiki.org/emacs/SiteMap">SiteMap</a> <a class="local" href="http://www.emacswiki.org/emacs/Search">Search</a> <a class="local" href="http://www.emacswiki.org/emacs/ElispArea">ElispArea</a> <a class="local" href="http://www.emacswiki.org/emacs/HowTo">HowTo</a> <a class="local" href="http://www.emacswiki.org/emacs/Glossary">Glossary</a> <a class="local" href="http://www.emacswiki.org/emacs/RecentChanges">RecentChanges</a> <a class="local" href="http://www.emacswiki.org/emacs/News">News</a> <a class="local" href="http://www.emacswiki.org/emacs/Problems">Problems</a> <a class="local" href="http://www.emacswiki.org/emacs/Suggestions">Suggestions</a> </span><span class="translation bar"><br />  <a class="translation new" rel="nofollow" href="http://www.emacswiki.org/emacs?action=translate;id=header2.el;missing=de_es_fr_it_ja_ko_pt_ru_se_zh">Add Translation</a></span><span class="edit bar"><br /> <a class="comment local" href="http://www.emacswiki.org/emacs/Comments_on_header2.el">Talk</a> <a class="edit" accesskey="e" title="Click to edit this page" rel="nofollow" href="http://www.emacswiki.org/emacs?action=edit;id=header2.el">Edit this page</a> <a class="history" rel="nofollow" href="http://www.emacswiki.org/emacs?action=history;id=header2.el">View other revisions</a> <a class="admin" rel="nofollow" href="http://www.emacswiki.org/emacs?action=admin;id=header2.el">Administration</a></span><span class="time"><br /> Last edited 2012-12-28 20:51 UTC by <a class="author" title="from inet-rmmc01-o.oracle.com" href="http://www.emacswiki.org/emacs/DrewAdams">DrewAdams</a> <a class="diff" rel="nofollow" href="http://www.emacswiki.org/emacs?action=browse;diff=2;id=header2.el">(diff)</a></span><div style="float:right; margin-left:1ex;">
<!-- Creative Commons License -->
<a class="licence" href="http://creativecommons.org/licenses/GPL/2.0/"><img alt="CC-GNU GPL" style="border:none" src="/pics/cc-GPL-a.png" /></a>
<!-- /Creative Commons License -->
</div>

<!--
<rdf:RDF xmlns="http://web.resource.org/cc/"
 xmlns:dc="http://purl.org/dc/elements/1.1/"
 xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<Work rdf:about="">
   <license rdf:resource="http://creativecommons.org/licenses/GPL/2.0/" />
  <dc:type rdf:resource="http://purl.org/dc/dcmitype/Software" />
</Work>

<License rdf:about="http://creativecommons.org/licenses/GPL/2.0/">
   <permits rdf:resource="http://web.resource.org/cc/Reproduction" />
   <permits rdf:resource="http://web.resource.org/cc/Distribution" />
   <requires rdf:resource="http://web.resource.org/cc/Notice" />
   <permits rdf:resource="http://web.resource.org/cc/DerivativeWorks" />
   <requires rdf:resource="http://web.resource.org/cc/ShareAlike" />
   <requires rdf:resource="http://web.resource.org/cc/SourceCode" />
</License>
</rdf:RDF>
-->

<p class="legal">
This work is licensed to you under version 2 of the
<a href="http://www.gnu.org/">GNU</a> <a href="/GPL">General Public License</a>.
Alternatively, you may choose to receive this work under any other
license that grants the right to use, copy, modify, and/or distribute
the work, as long as that license imposes the restriction that
derivative works have to grant the same rights and impose the same
restriction. For example, you may choose to receive this work under
the
<a href="http://www.gnu.org/">GNU</a>
<a href="/FDL">Free Documentation License</a>, the
<a href="http://creativecommons.org/">CreativeCommons</a>
<a href="http://creativecommons.org/licenses/sa/1.0/">ShareAlike</a>
License, the XEmacs manual license, or
<a href="/OLD">similar licenses</a>.
</p>
</div>
</body>
</html>
