Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769F91123FD
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 08:59:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wS0eAO8o6kYnx5B1S70OWXmHwhp/TAZfCQxM5wDYUhg=; b=i/mJS9Y82ruetH
	4p5R+TX3BT9u1EpH6x8bQWXSwshLshKR+bFsNBnaPF9sy8f8jlsMJwez0Si0wPjKNPzuL6G8DEI0O
	fKgAL9By2ZF6XfLNA1xPBeIspYBHLwErqtttfgHWtCOCMfhdKDjO6t2eS4Xx4lFOIjRYITXvFyc9y
	zjpJLufrykwvSaz7NuOaaea2Qnpd6Xn7JXmizaz/Mj6xIKiRvPbz3BnccxVJca94vSHYVQdlRYB20
	GqhTUL4BZVNTLaDFcoZ61+O/9qVxZWYjo9vZsEW5HRtTiXs+G3mhLJPuYSwNgmwkYlA42U6gA7zAH
	7G/o69DHGaD9ikQItq0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icPZP-000315-KG; Wed, 04 Dec 2019 07:59:35 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icPZM-00030Q-Uo
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 07:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575446371;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Y5kFSk3WfohLawK+ouQUq7MzOpCu6jHAThUpUuz9xKY=;
 b=HXM7s6A9ZXPBLCmhbraikqQdmap5Gusuf3nqYSxH89UFT7bRX/cuoH5zxlUDzQ/D0a3EZ8
 /9WwePc++CfzWv3uiuB4nozKMT/p38cSIvi3w7QywFGR29MmE978Xep+FbHv6Z3YspJpyx
 4anDeoN218xGVSB3cX0sTUJ3wgaR5dY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-GImN9KY2Oae3TC4z5ol6cQ-1; Wed, 04 Dec 2019 02:59:27 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 13272107ACC7;
 Wed,  4 Dec 2019 07:59:26 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-85.pek2.redhat.com
 [10.72.12.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A092A1001902;
 Wed,  4 Dec 2019 07:59:21 +0000 (UTC)
Date: Wed, 4 Dec 2019 15:59:17 +0800
From: Dave Young <dyoung@redhat.com>
To: linux-efi@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 Michael Weiser <michael@weiser.dinsnail.net>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: GImN9KY2Oae3TC4z5ol6cQ-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_235933_070233_75E8290D 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 12/04/19 at 03:52pm, Dave Young wrote:
> Michael Weiser reported he got below error during a kexec rebooting:
> esrt: Unsupported ESRT version 2904149718861218184.
> 
> The ESRT memory stays in EFI boot services data, and it was reserved
> in kernel via efi_mem_reserve().  The initial purpose of the reservation
> is to reuse the EFI boot services data across kexec reboot. For example
> the BGRT image data and some ESRT memory like Michael reported. 
> 
> But although the memory is reserved it is not updated in X86 e820 table.
> And kexec_file_load iterate system ram in io resource list to find places
> for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> initramfs overwritten the ESRT memory and then the failure happened.

s/overwritten/overwrote :)  If need a repost please let me know..

> 
> Since kexec_file_load depends on the e820 to be updated, just fix this
> by updating the reserved EFI boot services memory as reserved type in e820.
> 
> Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> bypassed in the reservation code path because they are assumed as reserved.
> But the reservation is still needed for multiple kexec reboot.
> And it is the only possible case we come here thus just drop the code
> chunk then everything works without side effects. 
> 
> On my machine the ESRT memory sits in an EFI runtime data range, it does
> not trigger the problem, but I successfully tested with BGRT instead.
> both kexec_load and kexec_file_load work and kdump works as well.
> 
> Signed-off-by: Dave Young <dyoung@redhat.com>
> ---
>  arch/x86/platform/efi/quirks.c |    6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> +++ linux-x86/arch/x86/platform/efi/quirks.c
> @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
>  		return;
>  	}
>  
> -	/* No need to reserve regions that will never be freed. */
> -	if (md.attribute & EFI_MEMORY_RUNTIME)
> -		return;
> -
>  	size += addr % EFI_PAGE_SIZE;
>  	size = round_up(size, EFI_PAGE_SIZE);
>  	addr = round_down(addr, EFI_PAGE_SIZE);
> @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
>  	early_memunmap(new, new_size);
>  
>  	efi_memmap_install(new_phys, num_entries);
> +	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> +	e820__update_table(e820_table);
>  }
>  
>  /*

Michael, could you a one more test and provide a tested-by if it works
for you?

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
