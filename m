Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9397D152709
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 08:32:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzLGdAuHel61v93LCzehwe0ig8t3x0RToDQDUGjJouU=; b=SXza2bKOM8jNaz
	QXjsWp1ENisUmGSmcFnjuk75V/jd+THvGA00MBZe1HKnZtnyTB/iB1zyt0sdpwF/jKSEoOmsFohnR
	KkI8GZBWo95tb3XlvLWRqg8Kil4Ck5S+VuFje58e9FMqUF8nK8ShAOh2SDdBL2w6CifcTn8L3LqaY
	JgWoP9YlDl8voKF2qwpmHIaGTcqSWUbN75VDPZtXNWPsLyfZWIN9lyP+C+6Pg/1Svp2ua++Z5mL6i
	QVKVfVH+NJ9Z+ayjVV+xU3VkqIIajYEOK6/w404xij9uqTsya+RqOSXpXtStIqAWIXOqMbjEh7LOX
	4khHra90NVCjS8QW+tMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izFAF-0008Vr-8b; Wed, 05 Feb 2020 07:31:59 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izFAA-0008UB-8n
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 07:31:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580887912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=p+vHVfvg9RS9GtRD1GA/N0DOI6G5HQHabXxVzxzzhJ8=;
 b=VfC1q3XX1yRSgkZzCBW/mGX/RdxI0sc6vxg7N4Ovad/ZSt6A3mKoNgUpSfPuB25dbqKvlG
 DNN+n27nDbyZWG0AjiDndL7mNfhN9BabjgfSBV662AaYo4HKSNyq9J9ko1rp5TXF6ktR0z
 XZ1xOOlymdPPPQDRRrT85Eo9TmiaxAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-424-VdY2oLuUMzuHW3iPGAZQ4g-1; Wed, 05 Feb 2020 02:31:51 -0500
X-MC-Unique: VdY2oLuUMzuHW3iPGAZQ4g-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 31C2C189F760;
 Wed,  5 Feb 2020 07:31:50 +0000 (UTC)
Received: from localhost (ovpn-12-97.pek2.redhat.com [10.72.12.97])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4457E5C1B2;
 Wed,  5 Feb 2020 07:31:47 +0000 (UTC)
Date: Wed, 5 Feb 2020 15:31:44 +0800
From: Baoquan He <bhe@redhat.com>
To: David Airlie <airlied@redhat.com>, Lyude Paul <lyude@redhat.com>
Subject: Re: mgag200 fails kdump kernel booting
Message-ID: <20200205073144.GA8965@MiWiFi-R3L-srv>
References: <20190626081522.GX24419@MiWiFi-R3L-srv>
 <20190626082907.GY24419@MiWiFi-R3L-srv>
 <CAMwc25oeskFG4bbrb3rwotqi1a5z4wYsGW=Qs_XJmhX_vAdNfQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMwc25oeskFG4bbrb3rwotqi1a5z4wYsGW=Qs_XJmhX_vAdNfQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_233154_394653_C08624AC 
X-CRM114-Status: GOOD (  25.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dyoung@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave, Lyude,

On 07/02/19 at 06:51am, David Airlie wrote:
> On Wed, Jun 26, 2019 at 6:29 PM Baoquan He <bhe@redhat.com> wrote:
> >
> > On 06/26/19 at 04:15pm, Baoquan He wrote:
> > > Hi Dave,
> > >
> > > We met an kdump kernel boot failure on a lenovo system. Kdump kernel
> > > failed to boot, but just reset to firmware to reboot system. And nothing
> > > is printed out.
> > >
> > > The machine is a big server, with 6T memory and many cpu, its graphic
> > > driver module is mgag200.
> > >
> > > When added 'earlyprintk=ttyS0' into kernel command line, it printed
> > > out only one line to console during kdump kernel booting:
> > >      KASLR disabled: 'nokaslr' on cmdline.
> > >
> > > Then reset to firmware to reboot system.
> > >
> > > By further code debugging, the failure happened in
> > > arch/x86/boot/compressed/misc.c, during kernel decompressing stage. It's
> > > triggered by the vga printing. As you can see, in __putstr() of
> > > arch/x86/boot/compressed/misc.c, the code checks if earlyprintk= is
> > > specified, and print out to the target. And no matter if earlyprintk= is
> > > added or not, it will print to VGA. And printing to VGA caused it to
> > > reset to firmware. That's why we see nothing when didn't specify
> > > earlyprintk=, but see only one line of printing about the 'KASLR
> > > disabled'.
> >
> > Here I mean:
> > That's why we see nothing when didn't specify earlyprintk=, but see only
> > one line of printing about the 'KASLR disabled' message when
> > earlyprintk=ttyS0 added.
> 
> Just to clarify, the original kernel is booted with mgag200 turned
> off, then kexec works, but if the original kernel loads mgag200, the
> kexec kernels resets hard when the VGA is used to write stuff out.
> 
> This *might* be fixable in the controlled kexec case, but having an
> mgag200 shutdown path that tries to put the gpu back into a state
> where VGA doesn't die, but for the uncontrolled kexec it'll still be a
> problem, since once the gpu is up and running and VGA is disabled, it
> doesn't expect to see anymore VGA transactions.

Now we have got other two bug reports on different systems, finally
figured out it's the same issue as this after debugging. And adding
'nomodeset' can work around it.

With the help from our QA, tried to get more systems with mgag200,
seems not all of them have this issue, some of them with mgag200 can
jump to kdump well after panic.

Any suggestion about how to proceed? I can experiment. Or if you would
like to have a look when convenient, I can get one system to you to
check. Or, can we just use 'nomodeset' as work around and hold this
issue for the time being?

Appreciate if any suggestion or idea.

> 
> Dave.
> >
> > >
> > > To confirm it's caused by VGA printing, I blacklist the mgag200 by
> > > writting it into /etc/modprobe.d/blacklist.conf. The kdump kernel can
> > > boot up successfully. And add 'nomodeset' can also make it work. So it's
> > > for sure mgag driver or related code have something wrong when booting
> > > code tries to re-init it.
> > >
> > > This is the only case we ever see, tend to pursuit fix in mgag200 driver
> > > side. Any idea or suggestion? We have two machines to be able to
> > > reproduce it stablly.
> > >
> > > Thanks
> > > Baoquan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
