Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C3A1A4717
	for <lists+kexec@lfdr.de>; Fri, 10 Apr 2020 15:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=debiABG2apmBi7gSl7404DJuaUbWyFcwByeznuBW6eQ=; b=kNwLxVBAkrZSZ6
	5W2saNf894/ASF4C11GY+ap6WrKA6iTNCi7oArtTdvAeN0C5qNmLko5dJYgz42NQuAHXfAGvymyog
	nai2hgjaIoSX+HbD3ktm8Mpp7TrVqoKHzOJEX9OOdzDx3cUDAYlCoxxcoMZPJARlBKSR97Np4Ms9n
	mvkH7Bm4rVdxqtDGiwVYqBquA+5TKIjXuCLwrkE3ZRgMl8JSdr9MswXAJVxP8+ghFB/PQ9MB6iVrK
	b7JcTMDTOXPH04F7RSFLPVUI68acwpbFyiu7muAGZzTJ/ggCutxTSi3TPPj9yaRkBorDGDQmDY9sv
	q7UPJ4GPH8F+h+gkwWsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMu7q-0007kf-FC; Fri, 10 Apr 2020 13:55:18 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMu7j-0006Z8-RV
 for kexec@lists.infradead.org; Fri, 10 Apr 2020 13:55:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586526906;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iz174XEQjo4HdMwcToRtjnHITXXF+QDP8a5ZECFP3Pc=;
 b=Uk4wlefv09Icq8LOw2l6nR8A4hQuO8a00MhWDa13soNQaD4Pdrl0/kJzEiOf/lhOXEtdiA
 UuI+5wBw8Lv1arSYEGtnG4K97pqmNf3MSt0YSU6q6104RzdrM4pFm1Y9+4brF/gRAB2iUe
 6WV8hTlQJOkbyKVDTjx7j/0MZoCgk8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-379-0sQfwSBnPamulE2kIkaCUA-1; Fri, 10 Apr 2020 09:54:59 -0400
X-MC-Unique: 0sQfwSBnPamulE2kIkaCUA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 998DB107ACC7;
 Fri, 10 Apr 2020 13:54:55 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-106.pek2.redhat.com
 [10.72.12.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A4ED260C05;
 Fri, 10 Apr 2020 13:54:47 +0000 (UTC)
Date: Fri, 10 Apr 2020 21:54:42 +0800
From: Dave Young <dyoung@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [GIT PULL 0/9] EFI fixes for v5.7-rc
Message-ID: <20200410135442.GA6772@dhcp-128-65.nay.redhat.com>
References: <20200409130434.6736-1-ardb@kernel.org>
 <20200409190109.GB45598@mit.edu>
 <CAMj1kXGiA3PAybR7r9tatL7WV5iU7B1OQxQok3d-JmRnhX1TnA@mail.gmail.com>
 <20200409201632.GC45598@mit.edu>
 <CAMj1kXFqKGSqm_y+ht4mmmu10TrhSyiTG8V3PxRYGodpZ=xNFQ@mail.gmail.com>
 <20200409235716.GF45598@mit.edu>
 <CAMj1kXH4VtNcJugpG_UR10ewGiOApTiw=C3FsuyAQQyg67Q8Aw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXH4VtNcJugpG_UR10ewGiOApTiw=C3FsuyAQQyg67Q8Aw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_065511_972246_0DB547A5 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 Arnd Bergmann <arnd@arndb.de>, Takashi Iwai <tiwai@suse.de>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arvind Sankar <nivedita@alum.mit.edu>, Gary Lin <glin@suse.com>,
 Sergey Shatunov <me@prok.pw>, Colin Ian King <colin.king@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 Jiri Slaby <jslaby@suse.cz>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cc kexec list.
On 04/10/20 at 09:08am, Ard Biesheuvel wrote:
> On Fri, 10 Apr 2020 at 01:57, Theodore Y. Ts'o <tytso@mit.edu> wrote:
> >
> > On Thu, Apr 09, 2020 at 11:29:06PM +0200, Ard Biesheuvel wrote:
> > > > What happens is that the kexec'ed kernel immediately crashes, at which
> > > > point we drop back into the BIOS, and then it boots the Debain 4.19.0
> > > > distro kernel instead of the kernel to be tested boot.  Since we lose
> > > > the boot command line that was used from the kexec, the gce-xfstests
> > > > image retries the kexec, which fails, and the failing kexec repeats
> > > > until I manually kill the VM.
> > >
> > > Does this help at all?
> > >
> > > diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
> > > index 781170d36f50..52f8138243df 100644
> > > --- a/arch/x86/include/asm/efi.h
> > > +++ b/arch/x86/include/asm/efi.h
> > > @@ -180,6 +180,7 @@ extern void __init
> > > efi_uv1_memmap_phys_epilog(pgd_t *save_pgd);
> > >
> > >  struct efi_setup_data {
> > >         u64 fw_vendor;
> > > +       u64 __unused;
> > >         u64 tables;
> > >         u64 smbios;
> > >         u64 reserved[8];
> >
> >
> > Tested-by: Theodore Ts'o <tytso@mit.edu>
> >
> 
> OK, I'll spin a proper patch
> 
> > Yep, that fixed it.  Thanks!!
> >
> > I wonder if this structure definition should be moved something like
> > arch/x86/include/uapi/asm/efi.h so it's more obvious that the
> > structure layout is used externally to the kernel?
> >
> 
> Well, 95% of the data structures used by EFI are based on the UEFI
> spec, so the base assumption is really that we cannot make changes
> like these to begin with. But I'll add a DON'T TOUCH comment here in
> any case.
> 

The runtime cleanup looks a very good one, but I also missed that,
userspace kexec-tools will break with the efi setup_data changes. But
kexec_file_load will just work with the cleanup applied.

Ard, could you add kexec list in cc when you send the fix out?

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
