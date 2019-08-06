Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009F3829B8
	for <lists+kexec@lfdr.de>; Tue,  6 Aug 2019 04:41:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vwv0V/NQ6NO8NvfJRvZ3vkhRAz13rUcE5RQPIbWIPJg=; b=KClXvnibZpu4Bm
	NV57y7rsBLOOkuxlTzhevMUlV29L/vehxhamLRhyO4qxHliyq35fiFvhn/YO3GGs439lMMiVv647n
	TmHGjY4PVeD7TOUSQY5XpzAFiQTNOcALqWzCGMqIg3owa9u0kRVUaR8G3QN0Yjr2aJtukOLABUbc0
	DwFO+t0Na7pIap7rez2nz3szkdYfa+o/U5pPYoc6ZSNLB5O622kZWMyPYc+GFWH2jqdXTMMXDqUKH
	UxXAw0v0boh4QRyI5qWva+3EH5X3c0lpHs0MIG6hnlLGVz19hJS6/2NLfOE5jhYzQ6utdNh74OsnU
	cS+O5wX8QuY5/u5AaWwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupPa-0004dM-AS; Tue, 06 Aug 2019 02:41:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupPX-0004d1-Ou
 for kexec@lists.infradead.org; Tue, 06 Aug 2019 02:41:17 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 20FB9C0546F1;
 Tue,  6 Aug 2019 02:41:15 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-88.pek2.redhat.com
 [10.72.12.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E9365C1D4;
 Tue,  6 Aug 2019 02:41:12 +0000 (UTC)
Date: Tue, 6 Aug 2019 10:41:08 +0800
From: Dave Young <dyoung@redhat.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
Message-ID: <20190806024108.GA6956@dhcp-128-65.nay.redhat.com>
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Tue, 06 Aug 2019 02:41:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_194115_832790_B6905B04 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Matthew Garrett <matthewgarrett@google.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linux-efi <linux-efi@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/05/19 at 06:55pm, Ard Biesheuvel wrote:
> On Mon, 5 Aug 2019 at 11:36, Dave Young <dyoung@redhat.com> wrote:
> >
> > kexec reboot fails randomly in UEFI based kvm guest.  The firmware
> > just reset while calling efi_delete_dummy_variable();  Unfortunately
> > I don't know how to debug the firmware, it is also possible a potential
> > problem on real hardware as well although nobody reproduced it.
> >
> > The intention of efi_delete_dummy_variable is to trigger garbage collection
> > when entering virtual mode.  But SetVirtualAddressMap can only run once
> > for each physical reboot, thus kexec_enter_virtual_mode is not necessarily
> > a good place to clean dummy object.
> >
> 
> I would argue that this means it is not a good place to *create* the
> dummy variable, and if we don't create it, we don't have to delete it
> either.
> 
> > Drop efi_delete_dummy_variable so that kexec reboot can work.
> >
> 
> Creating it and not deleting it is bad, so please try and see if we
> can omit the creation on this code path instead.

I'm not sure in this case the var is created or not, the logic seems
tricky to me.  It seems to me it is intend to force delete a non-exist
var here.

Matthew, can you comment here about Ard's question?

> 
> 
> > Signed-off-by: Dave Young <dyoung@redhat.com>
> > ---
> >  arch/x86/platform/efi/efi.c |    3 ---
> >  1 file changed, 3 deletions(-)
> >
> > --- linux-x86.orig/arch/x86/platform/efi/efi.c
> > +++ linux-x86/arch/x86/platform/efi/efi.c
> > @@ -894,9 +894,6 @@ static void __init kexec_enter_virtual_m
> >
> >         if (efi_enabled(EFI_OLD_MEMMAP) && (__supported_pte_mask & _PAGE_NX))
> >                 runtime_code_page_mkexec();
> > -
> > -       /* clean DUMMY object */
> > -       efi_delete_dummy_variable();
> >  #endif
> >  }
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
