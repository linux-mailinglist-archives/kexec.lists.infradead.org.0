Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 132A91A5C6A
	for <lists+kexec@lfdr.de>; Sun, 12 Apr 2020 05:51:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsH4lYJE7CWpr6QQgzy+iFqq7fG3RlFwift3xuBTheU=; b=EI4nE8KUxeOzfe
	3DlXpLImeWdx3CcPNp0lYOdwL0Dt2rK312TZ/70/s0cBSCAcrbj7GtcY5Qx63kQzrIVDi7Gl0Nv8F
	y28hB3b2i5gePqcaeE+FW4PdXABpQkyHPyRH1tpm1Rx/xtV8HGACjMLtUBhxhMMvKC5UZOF87q048
	tGlgEahaBYHZnbQUOjKvGuwefKhpAbQ4YVagIJTLzZJSmHMhHCLbXuX9uogEffJ97PFHaASCAlyAj
	0+HIuYwO8c4eqfETsSIxn1ezudW+BCrD8r6wllVsOHHkC6bELdOsO75AcyIlgxwti4UeSmii6+MpE
	PNFT0kWTFPuQvmVxhEpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNTep-0000ws-LZ; Sun, 12 Apr 2020 03:51:43 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNTen-0000w1-4C
 for kexec@lists.infradead.org; Sun, 12 Apr 2020 03:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586663498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=RMwbDDi8hNBOcv1tz+d1jrwNOMd0TGdpILpc5QVi8wc=;
 b=d9MP2xl1RRXe9eUIo6teTCFrV0RwUbvojgnojciMNWbgcQiudd+Iy8pBGYAwq5J3d7sNTV
 OI6+4zYa/d3IfEWC9ys1SXf8wVVaV7Iz0+YyGhd0f+bQ2yA3CVBeb5t78gJbBuXlX5prwj
 +7RF5N88J+RTOwWr/kJwfBYD3pltnhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-244-mEBUeA-zP26Vpyef_LPECQ-1; Sat, 11 Apr 2020 23:51:25 -0400
X-MC-Unique: mEBUeA-zP26Vpyef_LPECQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 205E5107ACC7;
 Sun, 12 Apr 2020 03:51:23 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-101.pek2.redhat.com
 [10.72.12.101])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 81A855D9C9;
 Sun, 12 Apr 2020 03:51:16 +0000 (UTC)
Date: Sun, 12 Apr 2020 11:51:11 +0800
From: Dave Young <dyoung@redhat.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [GIT PULL 0/9] EFI fixes for v5.7-rc
Message-ID: <20200412035111.GA10163@dhcp-128-65.nay.redhat.com>
References: <20200409130434.6736-1-ardb@kernel.org>
 <20200409190109.GB45598@mit.edu>
 <CAMj1kXGiA3PAybR7r9tatL7WV5iU7B1OQxQok3d-JmRnhX1TnA@mail.gmail.com>
 <20200409201632.GC45598@mit.edu>
 <CAMj1kXFqKGSqm_y+ht4mmmu10TrhSyiTG8V3PxRYGodpZ=xNFQ@mail.gmail.com>
 <20200409235716.GF45598@mit.edu>
 <CAMj1kXH4VtNcJugpG_UR10ewGiOApTiw=C3FsuyAQQyg67Q8Aw@mail.gmail.com>
 <20200410135442.GA6772@dhcp-128-65.nay.redhat.com>
 <20200411194351.GQ45598@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200411194351.GQ45598@mit.edu>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_205141_239272_A2CA3599 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Takashi Iwai <tiwai@suse.de>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
 Gary Lin <glin@suse.com>, Sergey Shatunov <me@prok.pw>,
 Colin Ian King <colin.king@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 Jiri Slaby <jslaby@suse.cz>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/11/20 at 03:43pm, Theodore Y. Ts'o wrote:
> On Fri, Apr 10, 2020 at 09:54:42PM +0800, Dave Young wrote:
> > 
> > The runtime cleanup looks a very good one, but I also missed that,
> > userspace kexec-tools will break with the efi setup_data changes. But
> > kexec_file_load will just work with the cleanup applied.
> 
> Hmmm, I wonder if there could be some kselftest or kunit tests that
> would make it easier to pick up these sorts of regressions earlier?

I thought about that before, but did not go with any actual actions.
kexec test needs a system reboot, Kdump is even harder to test, that is
the reason I hesitated about.

But since the breakage happens here and there frequently, it is time to
try it.  I think I will play with it, but I might be slow because of
other things,  welcome to post patches if anyone is interested :)

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
