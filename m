Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D47D1CE6A9
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 23:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8APTGaD1kAgRSI/yKzgYEeqExo8+xmspVbmT1A7LBvw=; b=bSjamh3NjEADps
	xfADAyHNOI7m2RQkwrvFksx/TTb8HqYCN+k6zFBmkriSF9bePS2OHsab1JnvyKQFuE6wcenyAjpfk
	BHw4tBH+UOLvYcRsJZEhhUrKNvXg+eyxVLxAAVa74l5IWjYD6CUD2zhq7X2NHK7QFTqo9qM9k488O
	6EwFCM6kt/w4CqSJfSU1UZ1HHLYKRLQlGHDaPPdLsye/uaiWfHV5a+thaf11XA+/EKd0wOuoKsU9V
	ofZuFSYJNyzBbQI7U/JVCny3JoHIEjrkboI10cs/DzYDRVH1eOCzkxZoVi8W6cqVMaevZryDt5/Rh
	OjkNHn12zGyB0swN7SWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFc0-0001Ip-Qk; Mon, 11 May 2020 21:05:20 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFbx-0001HR-D5
 for kexec@lists.infradead.org; Mon, 11 May 2020 21:05:18 +0000
Received: by mail-pf1-f193.google.com with SMTP id 145so5283351pfw.13
 for <kexec@lists.infradead.org>; Mon, 11 May 2020 14:05:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=t75vcHrGDSnK85bf5vWlaxNV98NfbPo5RXTgDatbL1Y=;
 b=olUyUnlUcmlIIC5ITiglRWUxow+SvW7MthyhUFnVnbBjelUMhqGNqn5exnMTLh4Xb2
 Idt6KDVug/iulB5QB3/5I4Ecd4R28pJXoPHXYiSh5mVl0dCJfyRnP4eABH73owrLnKbD
 BxViJyFe9+O3dlgIfIQeENr0dk0cyMxYnZ+IS0hYNWs4ZMqehuU01YdHKmqugzDGK6O8
 u2hrqyCM3ZtAE0GcEwxinZMndaHqPc3dWYtLaxJxzHcyo+ZvySbmYeBzc7S6iR1+HSNV
 UVF0mFzgCtAwwDXAvF/fdz7alGkBPh1w14URwwfcziZ0dUW8g503ea62QeCYJ8/QxxJH
 zZ8Q==
X-Gm-Message-State: AGi0PuZ5daP9ow7evUTr4VksAptwJzdhV5nUALqQa+n9IORuf0XF+LTF
 oVB1rALsL9sVNtJogoxTol8=
X-Google-Smtp-Source: APiQypLR9L4ljsK/1jNhGMDg4kZpQacuA0w6REvupxynKl/3lP68buLEUEk7PY9ibjXqDydibHJprA==
X-Received: by 2002:a62:34c1:: with SMTP id b184mr17463057pfa.73.1589231116431; 
 Mon, 11 May 2020 14:05:16 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id t74sm10232698pfc.64.2020.05.11.14.05.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 14:05:14 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id E54B140605; Mon, 11 May 2020 21:05:13 +0000 (UTC)
Date: Mon, 11 May 2020 21:05:13 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v3] kernel: add panic_on_taint
Message-ID: <20200511210513.GU11244@42.do-not-panic.com>
References: <20200509135737.622299-1-aquini@redhat.com>
 <20200511182455.GR11244@42.do-not-panic.com>
 <20200511200325.GE367616@optiplex-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511200325.GE367616@optiplex-lnx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_140517_444553_71975740 
X-CRM114-Status: GOOD (  32.70  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, bhe@redhat.com,
 corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com,
 rpalethorpe@suse.de, keescook@chromium.org, jikos@kernel.org, cai@lca.pw,
 bunk@kernel.org, tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 04:03:25PM -0400, Rafael Aquini wrote:
> On Mon, May 11, 2020 at 06:24:55PM +0000, Luis Chamberlain wrote:
> > On Sat, May 09, 2020 at 09:57:37AM -0400, Rafael Aquini wrote:
> > > +Trigger Kdump on add_taint()
> > > +============================
> > > +
> > > +The kernel parameter, panic_on_taint, calls panic() from within add_taint(),
> > > +whenever the value set in this bitmask matches with the bit flag being set
> > > +by add_taint(). This will cause a kdump to occur at the panic() call.
> > > +In cases where a user wants to specify this during runtime,
> > > +/proc/sys/kernel/panic_on_taint can be set to a respective bitmask value
> > > +to achieve the same behaviour.
> > > +
> > >  Contact
> > >  =======
> > >  
> > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > index 7bc83f3d9bdf..4a69fe49a70d 100644
> > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > @@ -3404,6 +3404,21 @@
> > >  	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
> > >  			on a WARN().
> > >  
> > > +	panic_on_taint=	[KNL] conditionally panic() in add_taint()
> > > +			Format: <str>
> > > +			Specifies, as a string, the TAINT flag set that will
> > > +			compose a bitmask for calling panic() when the kernel
> > > +			gets tainted.
> > > +			See Documentation/admin-guide/tainted-kernels.rst for
> > > +			details on the taint flags that users can pick to
> > > +			compose the bitmask to assign to panic_on_taint.
> > > +			When the string is prefixed with a '-' the bitmask
> > > +			set in panic_on_taint will be mutually exclusive
> > > +			with the sysctl knob kernel.tainted, and any attempt
> > > +			to write to that sysctl will fail with -EINVAL for
> > > +			any taint value that masks with the flags set for
> > > +			this option.
> > 
> > This talks about using a string, but that it sets a bitmask. Its not
> > very clear that one must use the string representation from each taint
> > flag. Also, I don't think to use the character representation as we
> > limit ourselves to the alphabet and quirky what-should-be-arbitrary
> > characters that represent the taint flags. The taint flag character
> > representation is juse useful for human reading of a panic, but I think
> > because of the limitation of the mask with the alphabet this was not
> > such a great idea long term.
> >
> 
> I respectfully disagree with you on this one, but that might be just
> because I'm a non-native English speaker and the cause of confusion is 
> not very clear to me. Would you mind providing a blurb with a text that
> you think it would be clearer on this regard?

A simple example of what can be used and what it would mean would
suffice.

> Also, making the input of the option to match with something one
> is used to see in taint reports make it easier to use. It would
> be still a human setting the boot option, so it makes sense to
> utilize a known/meaningful representation for panic_on_taint input.

Yes, however I still believe that what we are printing is only doing
a disservice to limiting the size of our bitmask.

> > So, I don't think we should keep on extending the alphabet use case, a
> > simple digit representation would suffice. I think this means we'd need
> > two params one for exclusive and one for the value of the taint.
> > 
> > Using a hex value or number also lets us make the input value shorter.
> >
> 
> Albeit you're right on the limitation of an alphabetical representation, 
> the truth is that taint flags are not introduced that frequently.
> Considering how many times these flags were introduced in the past,
> one could infer we probably will not run out of alphabet in the next 20 
> years (a couple of new flags gets introduced every 2 years, or so, in
> average), and the rate of change in these seems to be slowing down
> considerably, as in the past 5 years, we've seen only 2 new flags.
> 
> I'm not against your suggestion, though, but I think it makes
> clumsier to utilize the feature as you now require 2 kernel
> cmdline options, instead of just one, and a less intuitive
> way of setting it via base16 values. All at the expense of 
> a theoretical shortage of taint flags. 
> 
> If the others that were already OK with the simple string interface 
> don't object your change suggestions in that regard, I'll refactor
> the parser to meet them. 

It is just silly for us to restrict our bitmask to the alphabet. The
alphabetic restrictions were useful for print until we started running
out of meaningful characters, moving forward they'll just be a nuisance.

I don't think its wise to encourage their use now for input, now that
we have realized that their use will be pointless soon.

> > If a kernel boots with panic-on-taint flag not yet supported, we don't
> > complain, therefore getting a false sense of security that we will panic
> > with a not yet supported taint flag. I think we should pr_warn() or
> > fail to boot when that happens.
> >
> 
> Bear in mind that these very early print outs (like the ones eventually
> produced by setting panic_on_taint) to the log buffer might get lost in 
> verbose-logging long-running time systems, but apart from that, I see no 
> problems in being a little bit more verbose in that parser. I'll make
> the changes for a next revision, if no one else objects them.

See mitigations_parse_cmdline(), we pr_crit() there as well if we enter
a wrong value. I think that's the best we can do.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
