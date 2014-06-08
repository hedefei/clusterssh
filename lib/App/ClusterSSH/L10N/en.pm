package App::ClusterSSH::L10N::en;
use base 'App::ClusterSSH::L10N';

%Lexicon = ( '_AUTO' => 1, 
  '_DESCRIPTION' => q{The command opens an administration console and an xterm to all specified hosts.  Any text typed into the administration console is replicated to all windows.  All windows may also be typed into directly.

This tool is intended for (but not limited to) cluster administration where the same configuration or commands must be run on each node within the cluster.  Performing these commands all at once via this tool ensures all nodes are kept in sync.

Connections are opened via ssh, so a correctly installed and configured ssh installation is required.  If, however, the program is called by "crsh" then the rsh protocol is used (and the communications channel is insecure), or by "ctel" then telnet is used, or by "ccon" then console is used.

Extra caution should be taken when editing system files such as /etc/inet/hosts as lines may not necessarily be in the same order.  Assuming line 5 is the same across all servers and modifying that is dangerous.  It's better to search for the specific line to be changed and double-check before changes are committed.},

    '_FURTHER_NOTES' => q{Please also see "KNOWN BUGS".},

    '_FURTHER_NOTES_DESC_1' => q{The dotted line on any sub-menu is a tear-off, i.e. click on it and the sub-menu is turned into its own window.},

    '_FURTHER_NOTES_DESC_2' => q{Unchecking a hostname on the Hosts sub-menu will unplug the host from the cluster control window, so any text typed into the console is not sent to that host.  Re-selecting it will plug it back in.},

    '_FURTHER_NOTES_DESC_3' => q{If your window manager menu bars are obscured by terminal windows see the C<screen_reserve_XXXXX> options in the F<$HOME/.clusterssh/config> file (see L</"FILES">).},

    '_FURTHER_NOTES_DESC_4' => q{If the terminals overlap too much see the C<terminal_reserve_XXXXX> options in the F<$HOME/.clusterssh/config> file (see L</"FILES">).},

    '_FURTHER_NOTES_DESC_5' => q{When using cssh on a large number of systems to connect back to a single system (e.g. you issue a command to the cluster to scp a file from a given location) and when these connections require authentication (i.e. you are going to authenticate with a password), the sshd daemon at that location may refuse connects after the number specified by MaxStartups in sshd_config is exceeded.  (If this value is not set, it defaults to 10.)  This is expected behavior; sshd uses this mechanism to prevent DoS attacks from unauthenticated sources.  Please tune sshd_config and reload the SSH daemon, or consider using the ~/.ssh/authorized_keys mechanism for authentication if you encounter this problem.},

    '_FURTHER_NOTES_DESC_6' => q{If client windows fail to open, try running: 
    
C<< cssh -e {single host name} >>

This will test the mechanisms used to open windows to hosts.  This could be due to either the C<-xrm> terminal option which enables C<AllowSendEvents> (some terminals do not require this option, other terminals have another method for enabling it - see your terminal documentation) or the C<ConnectTimeout> ssh option (see the configuration option C<-o> or file C<$HOME/.clusterssh/config> below to resolve this).},

    '_OPTIONS' => q{Some of these options may also be defined within the configuration file.  Default options are shown as appropriate.
    },

    '_ARGUMENTS' => q{The following arguments are supported:},
    # note: escape the [ and ] with a ~
    '_ARGUMENTS_NAME_1' => q{~[user@~]<hostname>~[:port~] ...},
    '_ARGUMENTS_DESC_1' => q{Open an xterm to the given hostname and connect to the administration console.  An optional port number can be used if sshd is not listening on the standard port (i.e., not listening on port 22) and ssh_config cannot be used.},
    '_ARGUMENTS_NAME_2' => q{<tag> ...},
    '_ARGUMENTS_DESC_2' => q{Open a series of xterms defined by <tag> in one of the supplementary configuration files (see "FILES").

Note: specifying a username on a cluster tag will override any usernames defined in the cluster},

    '_KEY_SHORTCUTS' => q{The following key shortcuts are available within the console window, and all of them may be changed via the configuration files.},
    '_KEY_SHORTCUTS_NAME_1' => q{Control-q},
    '_KEY_SHORTCUTS_DESC_1' => q{Quit the program and close all connections and windows.},
    '_KEY_SHORTCUTS_NAME_2' => q{Control-+},
    '_KEY_SHORTCUTS_DESC_2' => q{Open the 'Add Host(s) or Cluster(s)' dialogue box.  Multiple host or cluster names can be entered, separated by spaces.},
    '_KEY_SHORTCUTS_NAME_3' => q{Alt-n},
    '_KEY_SHORTCUTS_DESC_3' => q{Paste in the hostname part of the specific connection string to each client, minus any username or port, e.g.

C<< scp /etc/hosts server:files/<Alt-n>.hosts >>

would replace the <Alt-n> with the client's name in each window.},
    '_KEY_SHORTCUTS_NAME_4' => q{Alt-r},
    '_KEY_SHORTCUTS_DESC_4' => q{Retile all the client windows.},

    '_EXAMPLES' => q{ },
    '_EXAMPLES_NAME_1' => q{Open up a session to 3 servers},
    '_EXAMPLES_DESC_1' => q{S<$ cssh server1 server2 server3>},
    '_EXAMPLES_NAME_2' => q{Open up a session to a cluster of servers identified by the tag 'farm1' and give the controlling window a specific title, where the cluster is defined in one of the default configuration files},
    '_EXAMPLES_DESC_2' => q{S<$ cssh -T 'Web Farm Cluster 1' farm1>},
    '_EXAMPLES_NAME_3' => q{Connect to different servers using different login names.  NOTE: this can also be achieved by setting up appropriate options in the F<.ssh/config> file.  Do not close cssh when the last terminal exits.},
    '_EXAMPLES_DESC_3' => q{S<$ cssh -Q user1@server1 admin@server2>},
    '_EXAMPLES_NAME_4' => q{Open up a cluster defined in a non-default configuration file},
    '_EXAMPLES_DESC_4' => q{S<$ cssh -c $HOME/cssh.config db_cluster>},
    '_EXAMPLES_NAME_5' => q{Use telnet on port 2022 instead of ssh},
    '_EXAMPLES_DESC_5' => q{S<$ ctel -p 2022 server1 server2>},
    '_EXAMPLES_NAME_7' => q{Use rsh instead of ssh},
    '_EXAMPLES_DESC_7' => q{S<$ crsh server1 server2>},
    '_EXAMPLES_NAME_8' => q{Use console with master as the primary server instead of ssh},
    '_EXAMPLES_DESC_8' => q{S<$ ccon -M master server1 server2>},

    '_KNOWN_BUGS' => q{If you have any ideas about how to fix the below bugs, please get in touch and/or provide a patch.},

    '_KNOWN_BUGS_DESC_1' => q{Swapping virtual desktops can cause a redraw of all the terminal windows.  This is due to a lack of distinction within Tk between switching desktops and minimising/maximising windows.  Until Tk can tell the difference between the two events, there is no fix (apart from rewriting everything directly in X).},

    '_REPORTING_BUGS' => q{ },
    '_REPORTING_BUGS_NAME_1' => q{a},
    '_REPORTING_BUGS_DESC_1' => q{a},

);

1;

=pod

=head1 NAME

App::ClusterSSH::L10N::en - Base English translations module

=head1 SYNOPSIS

    use App::ClusterSSH::L10N;
    my $lang = ClusterSSH::L10N->get_handle('en');
    $lang->maketext('text to localise with args [_1]', $arg1);

=head1 DESCRIPTION

L<Locale::Maketext> based translation module for ClusterSSH. See 
L<Locale::Maketext> for more information and usage.

=head1 METHODS

No method are exported.  See L<Locale::Maketext>.

=head1 AUTHOR

Duncan Ferguson, C<< <duncan_j_ferguson at yahoo.co.uk> >>

=head1 LICENSE AND COPYRIGHT

Copyright 1999-2010 Duncan Ferguson.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;
