Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD661148B3
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 22:30:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NX2X+Eplt7qdg8gkMxFHlpNXEVYiPrR/I4BSGN7Dk1s=; b=kmGQP/U1Wv0zMW
	Za0LCHKa6OAfX0g/1wYltDOLLh8rjcf+aND9l2QcR/xXgdno3NwAXnoTcCeB5hdatVhFF49aQd9Om
	U6jmqtCZLIGAZVCaIHqRWBlrr9sle7Sk+YeP4I3oI0RddP4WaD4bYeAtwIBMcfSzug40nfwFOae7g
	ZXfyth/LceOTqaPme2IDxLG+qA87mLC5gdCXkiWwm5phGy4aeknDz8dofCvpP5dZ0vuL96j9nINCi
	6VdE2fee8gcknk+MEK03kb2JYt773ZcAEOsZXoTCYUyPooKuhCNQikETuJJCgjrRR4+9DYFzjYAjy
	1wUFLghwjXKMDVjZ8gUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icyhz-0003MQ-KX; Thu, 05 Dec 2019 21:30:47 +0000
Received: from heinz.dinsnail.net ([81.169.187.250])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icyhs-0003LY-Jw
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 21:30:46 +0000
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
 by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id xB5LUEC0010903;
 Thu, 5 Dec 2019 22:30:14 +0100
Received: from eldalonde.UUCP (uucp@localhost)
 by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id xB5LUDNb010898;
 Thu, 5 Dec 2019 22:30:13 +0100
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id xB5LFWAK010648; 
 Thu, 5 Dec 2019 22:15:32 +0100
Received: (from michael@localhost)
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id xB5LFWDY010647;
 Thu, 5 Dec 2019 22:15:32 +0100
Date: Thu, 5 Dec 2019 22:15:32 +0100
From: Michael Weiser <michael@weiser.dinsnail.net>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191205211532.GA10177@weiser.dinsnail.net>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
 <20191204101412.GD114697@gmail.com>
 <20191205105545.GA6710@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205105545.GA6710@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-dinsnail-net-MailScanner-Information: Please contact the ISP for more
 information
X-dinsnail-net-MailScanner-ID: xB5LUEC0010903
X-dinsnail-net-MailScanner: Found to be clean
X-dinsnail-net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_133040_808849_EAB86878 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 06:55:45PM +0800, Dave Young wrote:

> >    esrt: Unsupported ESRT version 2904149718861218184.
> > 
> >  The ESRT memory stays in EFI boot services data, and it was reserved
> >  in kernel via efi_mem_reserve().  The initial purpose of the reservation
> >  is to reuse the EFI boot services data across kexec reboot. For example
> >  the BGRT image data and some ESRT memory like Michael reported.
> > 
> >  But although the memory is reserved it is not updated in the X86 E820 table,
> >  and kexec_file_load() iterates system RAM in the IO resource list to find places
> >  for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> >  initramfs overwrote the ESRT memory and then the failure happened.
> > 
> >  Since kexec_file_load() depends on the E820 table being updated, just fix this
> >  by updating the reserved EFI boot services memory as reserved type in E820.
> Thanks for the amending, also thank all for the review and test.

Same from me, particularly everyone's patience with my haphazard
guesswork around an area I clearly know nothing about. :)
-- 
Thanks,
Michael

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
