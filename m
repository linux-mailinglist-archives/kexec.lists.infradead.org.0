Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C79A113FC1
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 11:56:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fhZwD7FR/SwDsvnd3hvhQGiJo5ATulUX7dG2KXv8g0=; b=p1rMWXln7Ur8wB
	WEwvwxHXpb7g7CWw2ve7Q01Abab7Tsbac2Asl+Byjqbpe/EC9bolbdEgYS2dzfMIDI0Hnf05H3yKW
	Y/ADeGwo5Csmeo/2eAth9NMMXdESkanFhe51XjAoGPeVjoFC7vavwr8197vEYUtHCcqpKHnUZxp7t
	JriKUebFv65SsO1Usfvl+G3kZ0hpKc9y/P9B88ScN8KHVJTArxzQFrKOXo90JVsF0dqrFnmjtFQ3F
	Rt60CRPP8MWzFpggAk+fTH4pdl2NsAwejkAofpN2WFeuwY8wO13JSgCwKUV4ZZ+rsfCHrUSZluoGf
	xMceC0LSQh3ywXh4OdzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iconp-0006ZM-U2; Thu, 05 Dec 2019 10:56:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iconm-0006Yc-As
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 10:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575543363;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dcSvDAAQF2KhEEObz4gP9gUoPID8X22sgxJqtYom4vk=;
 b=L6PLR5k3q/Aog4ni9DzN1IwXQbFjRnHkhwSVYaB9bCV4BGE6c/9E0rLKzzThkEEHpKxZxB
 /KhJxdOOaCtE4sB3jdq+xqi++NbqK7GpS4BZa/XixFWTiKC7+mNze6dt2E03oDkYYrFpuW
 MId5o8PoTnfJ7m952GUmYEAz47vU5Bc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-3ho80iwfOzeRYyNYyHkmRA-1; Thu, 05 Dec 2019 05:55:56 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 357A2800D41;
 Thu,  5 Dec 2019 10:55:54 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-23.pek2.redhat.com
 [10.72.12.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 813305D9C5;
 Thu,  5 Dec 2019 10:55:49 +0000 (UTC)
Date: Thu, 5 Dec 2019 18:55:45 +0800
From: Dave Young <dyoung@redhat.com>
To: Ingo Molnar <mingo@kernel.org>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191205105545.GA6710@dhcp-128-65.nay.redhat.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
 <20191204101412.GD114697@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191204101412.GD114697@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: 3ho80iwfOzeRYyNYyHkmRA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_025606_447293_7A027464 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 12/04/19 at 11:14am, Ingo Molnar wrote:
> 
> * Dave Young <dyoung@redhat.com> wrote:
> 
> > On 12/04/19 at 03:52pm, Dave Young wrote:
> > > Michael Weiser reported he got below error during a kexec rebooting:
> > > esrt: Unsupported ESRT version 2904149718861218184.
> > > 
> > > The ESRT memory stays in EFI boot services data, and it was reserved
> > > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > > is to reuse the EFI boot services data across kexec reboot. For example
> > > the BGRT image data and some ESRT memory like Michael reported. 
> > > 
> > > But although the memory is reserved it is not updated in X86 e820 table.
> > > And kexec_file_load iterate system ram in io resource list to find places
> > > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > > initramfs overwritten the ESRT memory and then the failure happened.
> > 
> > s/overwritten/overwrote :)  If need a repost please let me know..
> > 
> > > 
> > > Since kexec_file_load depends on the e820 to be updated, just fix this
> > > by updating the reserved EFI boot services memory as reserved type in e820.
> > > 
> > > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > > bypassed in the reservation code path because they are assumed as reserved.
> > > But the reservation is still needed for multiple kexec reboot.
> > > And it is the only possible case we come here thus just drop the code
> > > chunk then everything works without side effects. 
> > > 
> > > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > > not trigger the problem, but I successfully tested with BGRT instead.
> > > both kexec_load and kexec_file_load work and kdump works as well.
> > > 
> > > Signed-off-by: Dave Young <dyoung@redhat.com>
> 
> 
> So I edited this to:
> 
>  From: Dave Young <dyoung@redhat.com>
> 
>  Michael Weiser reported he got this error during a kexec rebooting:
> 
>    esrt: Unsupported ESRT version 2904149718861218184.
> 
>  The ESRT memory stays in EFI boot services data, and it was reserved
>  in kernel via efi_mem_reserve().  The initial purpose of the reservation
>  is to reuse the EFI boot services data across kexec reboot. For example
>  the BGRT image data and some ESRT memory like Michael reported.
> 
>  But although the memory is reserved it is not updated in the X86 E820 table,
>  and kexec_file_load() iterates system RAM in the IO resource list to find places
>  for kernel, initramfs and other stuff. In Michael's case the kexec loaded
>  initramfs overwrote the ESRT memory and then the failure happened.
> 
>  Since kexec_file_load() depends on the E820 table being updated, just fix this
>  by updating the reserved EFI boot services memory as reserved type in E820.
> 
>  Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
>  bypassed in the reservation code path because they are assumed as reserved.
> 
>  But the reservation is still needed for multiple kexec reboots,
>  and it is the only possible case we come here thus just drop the code
>  chunk, then everything works without side effects.
> 
>  On my machine the ESRT memory sits in an EFI runtime data range, it does
>  not trigger the problem, but I successfully tested with BGRT instead.
>  both kexec_load() and kexec_file_load() work and kdump works as well.
> 

Thanks for the amending, also thank all for the review and test.

Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
