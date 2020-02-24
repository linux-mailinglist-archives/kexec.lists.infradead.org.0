Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 242C5169EF6
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 08:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9AzsVFZAkgHy9ECHmSehRxDvh/mqLJbV2gJx8loSUw=; b=DZZYW0+K3P17mA
	lzD3MI78ifjv5oUmZQw9VDyIDrekMzT8JQd1Fyx3LlGn3PerWcw3++k7/2F4gdzVpwrn3MQ8wD58h
	aQDHoPxM2aLeZNekkMK8FM+R2cQLeijAuwXro8Zb8rmO4PXrPcVX5yGv5ELd8sSLyhhCkynxGmqae
	7RnwwlyqSurPeY5Zo8bSVOoqVEjNbqoYMXgE7ot6OB1kmAWl4PIvTQb13uD1L7yJhVZq4sRHmeK59
	0AuSmS0F/LS0j/uOBdVyMKKQ2njy68VqbWjsYR54qBxXCOjYDSy1bdnhQlUXBECO6Q7piXrr28gCm
	10a0YzZ++yq7rrydd2Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67wr-0004FU-FN; Mon, 24 Feb 2020 07:14:37 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67wn-0004Ea-Tj
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 07:14:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582528472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=shbhF5QPWUZF4FXtBT/Y7FxOTeIlf15w2VQZ89Q+vRY=;
 b=X7+R4mQl29AVktFk7qWOTHB9PEtbr0Fy5pej/WltTS3GwhvM0h55Y2fuwZ2Z9muh4QAFF3
 Hpw0oC8x/07WPJKTpJt2An4moq8QK4wPTTdVA8J7eceNq+p2XileTGt2GP3T22aPxkrici
 kaDYHWyKfTT0DyJlEwdfImmTUzqKBYQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-OTADVYNTP1KgIKmAqwLMEg-1; Mon, 24 Feb 2020 02:14:28 -0500
X-MC-Unique: OTADVYNTP1KgIKmAqwLMEg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC3CE185734F;
 Mon, 24 Feb 2020 07:14:26 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-44.pek2.redhat.com
 [10.72.13.44])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 336B15C105;
 Mon, 24 Feb 2020 07:14:23 +0000 (UTC)
Date: Mon, 24 Feb 2020 15:14:19 +0800
From: Dave Young <dyoung@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] x86/kexec: do not reserve kexec setup_data in kexec e820
 table
Message-ID: <20200224071419.GA18237@dhcp-128-65.nay.redhat.com>
References: <20200212110424.GA2938@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212110424.GA2938@dhcp-128-65.nay.redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_231434_034802_59C95678 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 02/12/20 at 07:04pm, Dave Young wrote:
> The e820 table for kexec kernel always takes setup_data as reserved.
> It is reasonable for the setup_data passed by the 1st kernel boot loader,
> for example SETUP_PCI etc.  But SETUP_EFI is used by kexec itself to
> enable EFI in 2nd kernel, also kexec setups it every time. Thus it
> is pointless to reserve kexec prepared setup_data.
> 
> 1st physical boot: no SETUP_EFI
> kexec load new kernel and prepare a SETUP_EFI setup_data, then reboot
>  -> 2nd kernel sees SETUP_EFI, reserves in both e820 and kexec e820
>     another kexec load prepare a new SETUP_EFI, then reboot
>     -> 3rd kernel has two SETUP_EFI ranges reserved
>        -> and so on..
> 
> Thus skip SETUP_EFI while reserving setup_data for kexec kernel.
> 
> Signed-off-by: Dave Young <dyoung@redhat.com>
> ---
>  arch/x86/kernel/e820.c |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> --- linux-x86.orig/arch/x86/kernel/e820.c
> +++ linux-x86/arch/x86/kernel/e820.c
> @@ -999,7 +999,9 @@ void __init e820__reserve_setup_data(voi
>  	while (pa_data) {
>  		data = early_memremap(pa_data, sizeof(*data));
>  		e820__range_update(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
> -		e820__range_update_kexec(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
> +		/* Skip kexec passed setup_data */
> +		if (data->type != SETUP_EFI)
> +			e820__range_update_kexec(pa_data, sizeof(*data)+data->len, E820_TYPE_RAM, E820_TYPE_RESERVED_KERN);
>  
>  		if (data->type == SETUP_INDIRECT &&
>  		    ((struct setup_indirect *)data->data)->type != SETUP_INDIRECT) {

Ping, can someone review this? It caused fragmented memory in kexec
kernel also waste memory.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
