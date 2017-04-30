# unbind default prefix and set it to Ctrl+a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on


#delay issues
set -sg escape-time 1

# window management
bind N new-window

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

bind-key H resize-pane -L 5
bind-key J resize-pane -D 5
bind-key K resize-pane -U 5
bind-key L resize-pane -R 5

bind-key , previous-window 
bind-key . next-window


## splits window
bind-key | split-window -h
bind-key - split-window -v
bind-key _ split-window -v -p 20


## allow multiple begin of line
bind-key a send-key C-a

##reload tmux.conf
bind-key R refresh-client


# create dev_window layout
bind F source-file ~/.tmux/.dev.tmux.conf
