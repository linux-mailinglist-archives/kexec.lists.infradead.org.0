Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B565C493
	for <lists+kexec@lfdr.de>; Mon,  1 Jul 2019 22:51:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7ksfviUFWzr4UtLYO8s9hUWWrYP+AAQAqsYHPtU9So=; b=QvXNYJ5CyYKOS0
	7skLvRM3kvBWB1W+upBJTR3lmMBHOmASZmoHD9jQPjj5XJjZmek3UexqDlAavwbY/YyYf3pg3+K1D
	HDKTt/4+2k4+4uzVGSH91QyWSVRzVxg+eOLOGCGzwBN/tbSHUnS5ZL5VOiPPbD43IRv0vPEt9tdj+
	viXimqfn/8DN4vpvQzFcvZLPARJ6QuZm7RtcA2905ANUtmjaUN6hH6ltP4mycvK3lK2a/oQJTRVxs
	ioR+ATBX6lE7wBYnuOvrq1a+q7XLKh3zzHX1loHl9Qxe8lIFxyxNhaI5+aqap2phQrnLX0MTY6da2
	xF2A6T/J4fe25L2F3wPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi3Gh-0007Ev-KY; Mon, 01 Jul 2019 20:51:19 +0000
Received: from mail-ua1-f66.google.com ([209.85.222.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi3Gd-0007E4-QA
 for kexec@lists.infradead.org; Mon, 01 Jul 2019 20:51:17 +0000
Received: by mail-ua1-f66.google.com with SMTP id 34so5618541uar.8
 for <kexec@lists.infradead.org>; Mon, 01 Jul 2019 13:51:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wESivRaOzdReZ9r3dQBJ6+auCoe5qPpy86Hfp/fZ9E8=;
 b=SbW4zEcjpyB7h9asM1q0f/9ht1GnyxpjvajcmcERIjcGXiTTsWyXPXy/mjNGsOQHnV
 pk/78OqSb4TGN1nivbIsVlfnW4aoiknENJy1bOby1xs2SB0i9b7pkbtjbG1B/7HPP3q3
 8ZN81IAgdAt4ar2AuG/DFvs24YztMdN3cVAh/2fy/xJrCpg2sOGAzEXWYaewM7WK7RYt
 /3yWrdnHqvWlFZahhfwYkOpC+D1Ws2QNqTyzePRV6envNRzPnYZsxoeITc3znswViBTd
 aT+rcVwLDyE/RCY5HAKkkpYRH2w5luVAPuyFPiYX5aIUOWWCLnLKtz0l4gS7ahyf/mf1
 0Fpg==
X-Gm-Message-State: APjAAAXdI9ctxmnrYqYAftAZ0jj3bmrAdiDUv9ucsaddpr6cmHfOoM8E
 6YBrxJhIBON6MUcBkOhYR75HE0eDbiUDBtUaR7s7Hw==
X-Google-Smtp-Source: APXvYqwMzDPq7JpJflDPfeE/dnLsjBjSEFhiY3GM+/DWjW/AMVD2Nqv2V3R3T/2gUIf0fb+Zl6ZNq2nnxyTmlzmYxFg=
X-Received: by 2002:ab0:168a:: with SMTP id e10mr15443818uaf.87.1562014274511; 
 Mon, 01 Jul 2019 13:51:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190626081522.GX24419@MiWiFi-R3L-srv>
 <20190626082907.GY24419@MiWiFi-R3L-srv>
In-Reply-To: <20190626082907.GY24419@MiWiFi-R3L-srv>
From: David Airlie <airlied@redhat.com>
Date: Tue, 2 Jul 2019 06:51:03 +1000
Message-ID: <CAMwc25oeskFG4bbrb3rwotqi1a5z4wYsGW=Qs_XJmhX_vAdNfQ@mail.gmail.com>
Subject: Re: mgag200 fails kdump kernel booting
To: Baoquan He <bhe@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_135115_851648_B2B6B62C 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lyude Paul <lyude@redhat.com>, dyoung@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 6:29 PM Baoquan He <bhe@redhat.com> wrote:
>
> On 06/26/19 at 04:15pm, Baoquan He wrote:
> > Hi Dave,
> >
> > We met an kdump kernel boot failure on a lenovo system. Kdump kernel
> > failed to boot, but just reset to firmware to reboot system. And nothing
> > is printed out.
> >
> > The machine is a big server, with 6T memory and many cpu, its graphic
> > driver module is mgag200.
> >
> > When added 'earlyprintk=ttyS0' into kernel command line, it printed
> > out only one line to console during kdump kernel booting:
> >      KASLR disabled: 'nokaslr' on cmdline.
> >
> > Then reset to firmware to reboot system.
> >
> > By further code debugging, the failure happened in
> > arch/x86/boot/compressed/misc.c, during kernel decompressing stage. It's
> > triggered by the vga printing. As you can see, in __putstr() of
> > arch/x86/boot/compressed/misc.c, the code checks if earlyprintk= is
> > specified, and print out to the target. And no matter if earlyprintk= is
> > added or not, it will print to VGA. And printing to VGA caused it to
> > reset to firmware. That's why we see nothing when didn't specify
> > earlyprintk=, but see only one line of printing about the 'KASLR
> > disabled'.
>
> Here I mean:
> That's why we see nothing when didn't specify earlyprintk=, but see only
> one line of printing about the 'KASLR disabled' message when
> earlyprintk=ttyS0 added.

Just to clarify, the original kernel is booted with mgag200 turned
off, then kexec works, but if the original kernel loads mgag200, the
kexec kernels resets hard when the VGA is used to write stuff out.

This *might* be fixable in the controlled kexec case, but having an
mgag200 shutdown path that tries to put the gpu back into a state
where VGA doesn't die, but for the uncontrolled kexec it'll still be a
problem, since once the gpu is up and running and VGA is disabled, it
doesn't expect to see anymore VGA transactions.

Dave.
>
> >
> > To confirm it's caused by VGA printing, I blacklist the mgag200 by
> > writting it into /etc/modprobe.d/blacklist.conf. The kdump kernel can
> > boot up successfully. And add 'nomodeset' can also make it work. So it's
> > for sure mgag driver or related code have something wrong when booting
> > code tries to re-init it.
> >
> > This is the only case we ever see, tend to pursuit fix in mgag200 driver
> > side. Any idea or suggestion? We have two machines to be able to
> > reproduce it stablly.
> >
> > Thanks
> > Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
