;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ruby
     vimscript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     emacs-lisp
     markdown
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     ;; spell-checking
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t)
     better-defaults
     ;; cb-org-reveal
     clojure
     colors
     ;; slack
     emacs-lisp
     ;; emoms
     (git :variables
          git-magit-status-fullscreen t
          git-enable-github-support t
          git-gutter-use-fringe t)
     github
     ranger
     yaml
     html
     spotify
     javascript
     ;; (org)
     (org :variables
          org-enable-github-support t)
     (shell :variables
            shell-default-height 30
            shell-default-position 'top
            shell-defult-shell 'eshell) ;; SPC ' ope
     (sql :variables sql-capitalize-keywords t
          sql-capitalize-keywords-blacklist '("name"))
     java
     gnus
     docker
     syntax-checking
     version-control
     ( restclient :variables
                  restclient-use-org t)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(org-gcal mode-icons
                                               all-the-icons
                                               evil-easymotion
                                               spaceline-all-the-icons)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(doom-one
                         doom-molokai
                         sanityinc-solarized-dark
                         spacemacs-dark
                         spacemacs-light
                         )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Operator Mono Book"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers '(:relative t)
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; Clojure
  ;; Pretty symbols for anonymous functions, set literals and partial functions
  (setq clojure-enable-fancify-symbols t)
  (global-prettify-symbols-mode +1)
  (add-to-list 'exec-path "/usr/local/bin" )
  (setq tern-command '("node" "/home/alfrheim/.nvm/versions/node/v8.11.1/lib/node_modules/tern/bin/tern"))
  ;; Not truncate lines in sql
  (add-hook 'sql-interactive-mode-hook
            (lambda ()
              (toggle-truncate-lines t)))
  (add-to-list 'load-path "~/Programs/lsp-java/")
  (add-to-list 'load-path "~/Programs/lsp-mode/")
  (require 'lsp-java)
  (require 'lsp-mode)
  (add-hook 'java-mode-hook #'lsp-java-enable)
  ;; set the projects that are going to be imported into the workspace.
  (setq lsp-java--workspace-folders (list "~/Work/Codurance/Mango/ordernotifications"
                                          "~/Work/Codurance/Mango/orders"
                                          ))
  ;;NeoTree
  ;(setq neo-theme 'icons)
  (doom-themes-neotree-config)
  ;doom-neotree-file-icons t

  ;; SmartParens
  ;; (define-key smartparens-mode-map (kbd "your-key") 'function)
  ;; jr0cket: kill sexp the smartparens way, overrides kill-sexp when smartparens mode is on
  ;;  (define-key smartparens-mode-map (kbd "C-M k") 'sp-kill-sexp) - just enable strict mode


  ;; jr0cket: text scaling keybindings
  (define-key global-map (kbd "C-+") 'text-scale-increase)
  (define-key global-map (kbd "C--") 'text-scale-decrease)
  (define-key global-map (kbd "C-)") 'sp-forward-slurp-sexp)
  (define-key global-map (kbd "C-(") 'sp-backward-slurp-sexp)
  (define-key global-map (kbd "M-)") 'sp-forward-barf-sexp)
  (define-key global-map (kbd "M-(") 'sp-backward-barf-sexp)

  (define-key global-map (kbd "C-j") 'mc/mark-next-like-this)

  ;; jr0cket: keybindings for cycling buffers
  (global-set-key [C-prior] 'previous-buffer)
  (global-set-key [C-next] 'next-buffer)

  ;; jr0cket: Remap multiple cursors to a pattern that is easier to remember
  (define-key global-map (kbd "C-c m c") 'mc/edit-lines)

  ;; Remap undo to overwrite the Emacs GUI window hide key
  ;; as the backslash character is used to escape in Emacs, we need to escape it with another backslash
  (define-key global-map (kbd "C-\\") 'undo-tree-undo)
  (define-key global-map (kbd "M-\\") 'undo-tree-redo)

  ;; jr0cket: Org-mode

  ;;; Should write a toggle function to show descriptive or literate links in Org-mode
  ;;(setq org-descriptive-links nil)

  ;; Define the location of the file to hold tasks
  (setq org-agenda-files '("~/Dropbox/org/"))
  (global-set-key (kbd "<f12>") (lambda () (interactive) (org-capture nil "t")))
  ;;(setq org-default-notes-file "~/Dropbox/todo-list.org")

  ;; Define a kanban style set of stages for todo tasks
  (setq org-todo-keywords
        '((sequence "TODO" "DOING" "BLOCKED" "REVIEW" "|" "DONE" "ARCHIVED")))

  ;; Source: https://www.suenkler.info/docs/emacs-orgmode/
  (setq org-capture-templates
        '(
          ;; Create Todo under todo.org -> Tasks
          ;; file+olp specifies to full path to fill the Template
          ("t" "Task TODO" entry (file+olp "~/Dropbox/org/todo.org" "Tasks")
           "* TODO %? \n:PROPERTIES:\n:CREATED: %U\n:END:")
          ;; Create Todo under GTD.org -> Private -> Tasks
          ;; file+olp specifies to full path to fill the Template
          ;; ("p" "Private TODO" entry (file+olp "~/Dropbox/orgmode/GTD.org" "Private" "Tasks") 
          ;;  "* TODO %? \n:PROPERTIES:\n:CREATED: %U\n:END:")
          ))

  ;; Setting Colours (faces) for todo states to give clearer view of work
  (setq org-todo-keyword-faces
        '(("TODO" . org-warning)
          ("DOING" . "yellow")
          ("BLOCKED" . "red")
          ("REVIEW" . "orange")
          ("DONE" . "green")
          ("ARCHIVED" .  "blue")))
  ;(setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
  ;; Progress Logging
  ;; When a TODO item enters DONE, add a CLOSED: property with current date-time stamp
  (setq org-log-done 'time)

  (spacemacs|do-after-display-system-init
   (mode-icons-mode))

  (defun alfrheim/gtd ()
    (interactive)
    (find-file "~/Dropbox/org/todo.org"))

  (bind-key "C-x p" 'pop-to-mark-command)
  (setq set-mark-command-repeat-pop t)
  ;; Gnus configuration
  ;; Get email, and store in nnml
  (setq gnus-secondary-select-methods
        '(
          (nntp "gmane"
                (nntp-address "news.gmane.org"))
          (nntp "news.eternal-september.org")
          (nntp "nntp.aioe.org")
          (nntp "news.gwene.org")
          ))
  )
;; Get email, and store in nnml
(setq gnus-secondary-select-methods
      '(
        (nnimap "gmail"
                (nnimap-address
                 "imap.gmail.com")
                (nnimap-server-port 993)
                (nnimap-stream ssl))
        ))

;; Send email via Gmail:
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-default-smtp-server "smtp.gmail.com")

;; Archive outgoing email in Sent folder on imap.gmail.com:
(setq gnus-message-archive-method '(nnimap "imap.gmail.com")
      gnus-message-archive-group "[Gmail]/Sent Mail")

;; set return email address based on incoming email address
(setq gnus-posting-styles
      '(((header "to" "address@outlook.com")
         (address "address@outlook.com"))
        ((header "to" "address@gmail.com")
         (address "address@gmail.com"))))

;; store email in ~/gmail directory
(setq nnml-directory "~/gmail")
(setq message-directory "~/gmail")



(defun string->sql
    ()
  "Function that put quotes to a list of strings for querying sql in IN."
  (interactive)
  (goto-char (point-min))
  (insert "(\"")
  (goto-char (line-end-position))
  (insert "\",")
  (setq moreLines t)
  (while (= 0 (forward-line 1))
    (insert "\"")
    (goto-char (line-end-position))
    (insert "\","))
  (delete-backward-char 1)
  (insert ")"))

(defun int->sql
    ()
  "Function that put comas to a list of integers for querying sql in IN."
  (interactive)
  (goto-char (point-min))
  (insert "(")
  (goto-char (line-end-position))
  (insert ",")
  (setq moreLines t)
  (while (= 0 (forward-line 1))
    (goto-char (line-end-position))
    (insert ","))
  (delete-backward-char 1)
  (insert ")"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-easymotion restclient-helm ob-restclient ob-http company-restclient restclient know-your-http-well rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby lsp-java vimrc-mode dactyl-mode sql-indent zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ox-gfm dockerfile-mode docker tablist docker-tramp company-emacs-eclim eclim yaml-mode xterm-color winum which-key web-mode use-package toc-org slack emojify circe websocket scss-mode rainbow-mode rainbow-delimiters pug-mode persp-mode paradox orgit org-projectile org-present org-pomodoro org-mime org-download org-bullets mwim magit-gitflow magit-gh-pulls linum-relative link-hint js2-refactor htmlize hl-todo highlight-indentation helm-swoop helm-projectile helm-make projectile helm-flx helm-descbinds helm-company gitconfig-mode gitattributes-mode git-timemachine gist flx-ido fill-column-indicator eyebrowse expand-region exec-path-from-shell evil-surround evil-nerd-commenter evil-matchit evil-magit eshell-prompt-extras dumb-jump diff-hl define-word company-web company-quickhelp column-enforce-mode color-identifiers-mode clojure-snippets clj-refactor hydra multiple-cursors paredit clean-aindent-mode cider clojure-mode bind-key auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link avy dash-functional company iedit smartparens highlight f evil goto-chg flycheck epl gh marshal ht magit magit-popup git-commit ghub let-alist with-editor yasnippet gitignore-mode helm helm-core async markdown-mode org-plus-contrib alert js2-mode simple-httpd spaceline powerline all-the-icons dash s ws-butler web-completion-data web-beautify volatile-highlights vi-tilde-fringe uuidgen unfill undo-tree tagedit spotify spinner spaceline-all-the-icons smeargle slim-mode shell-pop seq sass-mode restart-emacs ranger rainbow-identifiers queue popwin pkg-info pcre2el pcache org-gcal org-category-capture open-junk-file oauth2 neotree multi-term move-text mode-icons mmm-mode markdown-toc macrostep lorem-ipsum logito log4e livid-mode less-css-mode json-mode js-doc inflections indent-guide hungry-delete highlight-parentheses highlight-numbers helm-themes helm-spotify-plus helm-mode-manager helm-gitignore helm-css-scss helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gntp github-search github-clone github-browse-file git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flycheck-pos-tip flx fancy-battery evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-search-highlight-persist evil-numbers evil-mc evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eshell-z esh-help emmet-mode elisp-slime-nav edn doom-themes diminish company-tern company-statistics color-theme-sanityinc-solarized coffee-mode cider-eval-sexp-fu auto-yasnippet auto-highlight-symbol ace-jump-helm-line ac-ispell))))
   ;;(quote
    ;;(org-mime helm-spotify-plus slack emojify circe oauth2 websocket spaceline-all-the-icons monochrome-theme yaml-mode xterm-color web-mode web-beautify vimrc-mode unfill tagedit spotify smeargle slim-mode shell-pop scss-mode sass-mode ranger rainbow-mode rainbow-identifiers pug-mode orgit org-projectile org-category-capture org-present org-pomodoro org-gcal alert request-deferred deferred log4e gntp org-download mwim multi-term mode-icons mmm-mode markdown-toc markdown-mode magit-gitflow magit-gh-pulls livid-mode skewer-mode simple-httpd less-css-mode json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc htmlize helm-spotify multi helm-gitignore helm-css-scss helm-company helm-c-yasnippet haml-mode gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gist gh marshal logito pcache ht gh-md fuzzy flycheck-pos-tip flycheck evil-magit magit magit-popup git-commit with-editor eshell-z eshell-prompt-extras esh-help emmet-mode diff-hl dactyl-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-quickhelp pos-tip company color-identifiers-mode coffee-mode clojure-snippets clj-refactor inflections edn multiple-cursors paredit seq peg cider-eval-sexp-fu cider queue clojure-mode auto-yasnippet yasnippet ac-ispell auto-complete zonokai-theme zenburn-theme zen-and-art-theme ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spaceline spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme restart-emacs request rainbow-delimiters railscasts-theme purple-haze-theme professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pastels-on-dark-theme paradox organic-green-theme org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme neotree naquadah-theme mustang-theme move-text monokai-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme macrostep lush-theme lorem-ipsum linum-relative link-hint light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gandalf-theme flx-ido flatui-theme flatland-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu espresso-theme elisp-slime-nav dumb-jump dracula-theme django-theme define-word darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
