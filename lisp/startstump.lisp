(require :swank)
(require :stumpwm)
(swank-loader:init)
(swank:create-server :port 4004
                     :style swank:*communication-style*
                     :dont-close t)
(stumpwm:stumpwm)
