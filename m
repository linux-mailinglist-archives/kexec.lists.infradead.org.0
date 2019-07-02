Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1595C771
	for <lists+kexec@lfdr.de>; Tue,  2 Jul 2019 04:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HJxzC4Ayjc0Fr3zQpcpQHhf02HEQBmMBCtXYvkLnYOY=; b=PI83jNCQLUWqe8
	awTrHCO0lRAJf7b5ymrrKo6fShDcx9Z/E7s9Of7pK1lVGeIBmmsfrHr7JFd8UqhZhed4I2pyPXSyT
	m/HhjFQlvd3IpASey5QWpD0T8dnwK5bh3pzIqPNWIK3ogt+aflt9EzVazUhR2B/cAEe5hlBDdcNyc
	FqHrY1g0FN96lk3MmI4iXYgQ9SOxpkrQHAndTwcKwEgO/3Uop2/cpCMMCkxJjJGKnvPJhklrCZbJX
	e1uGDyra4MWn6a7z3NXayCpqRQK2IeA9hLPZUAfSyGgODEJEQHUTZ+lbBeou6cg7ik8V1OfYp/aT7
	WpwXT8lrDrcxaIhU2Tbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi8p4-0001rD-Mu; Tue, 02 Jul 2019 02:47:10 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi8p2-0001qo-0s
 for kexec@lists.infradead.org; Tue, 02 Jul 2019 02:47:09 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4ECDE2F8BEB;
 Tue,  2 Jul 2019 02:47:07 +0000 (UTC)
Received: from localhost (ovpn-12-52.pek2.redhat.com [10.72.12.52])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B6A0A60C44;
 Tue,  2 Jul 2019 02:47:04 +0000 (UTC)
Date: Tue, 2 Jul 2019 10:47:02 +0800
From: Baoquan He <bhe@redhat.com>
To: Dave Young <dyoung@redhat.com>
Subject: Re: mgag200 fails kdump kernel booting
Message-ID: <20190702024702.GD3178@localhost.localdomain>
References: <20190626081522.GX24419@MiWiFi-R3L-srv>
 <20190702022140.GA3327@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702022140.GA3327@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 02 Jul 2019 02:47:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_194708_088063_56FCADBD 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: airlied@redhat.com, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 07/02/19 at 10:21am, Dave Young wrote:
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
> 
> Personally I think early code should not blindly do vga writing, there
> are cases that does not work:
> 1. efi booted machine,  just no output
> 2. kdump kernel booted,  writing to vga caused undefined state, for
> example in your case it caused a system reset.
> 
> So I suggest only write to vga when we see earlyprintk=vga in kernel
> cmdline.

I remember one customer ever attached a picture of kernel booting hang
from monitor. I planned to disable vga when it's not specified, but
changed my mind because not all machines are servers w/o monitor. Still
there are many people using laptop, PC, they have vga printing, possibly
have no console. When crash happened, maybe randomly, the vga printing
could be the only witness. In above listed cases, case 1 doesn't output,
seems efi need be fixed, but I can't see why it matters here. About case
2, do you have a specific example, except of this one? Printing to vga
has been done so long time, if it does cause troubles, we need to mute
it now.

Thanks
Baoquan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
