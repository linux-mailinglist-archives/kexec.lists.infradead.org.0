Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA1F30B77
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxN/XNUCmKCVHtbjJybc7BMfYsFvLghbCWGIrMFi89o=; b=tDPBrODCGCsnUW
	h6fgp9j+tx1GJXEzd2hy0aKxoH8w+g0lKQLL8tgTi1EcUExO9RLbRqc1zL5mwd49JzFTWI8CFYIMz
	7GTnApl/EwSVsQmlxqo1g/JqTe80WWUNVheqpmj8s4hmDUrlB5ZlmOAuN8A4LevvL3Fu5EOnwxVNQ
	hrZJOrP8qeDMsLD7YKpT92JbPJCDztUhF8TqJd4yQnHgtuCUMZjuzTVVEr1J756hYwAcmvh68HWZp
	IxC0hWR88MGlF60CI1SqWbatVFGQ9raHLMbymToKziFTmEPQMD8tWxMTIpRZ4iVyE5aRn+zNBMZkD
	ok1qxENGg+McTueOQPCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdpG-0006dx-AA; Fri, 31 May 2019 09:27:50 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdpD-0006da-86
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:27:48 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5328F25AE77;
 Fri, 31 May 2019 19:27:46 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 4868C9401DB; Fri, 31 May 2019 11:27:44 +0200 (CEST)
Date: Fri, 31 May 2019 11:27:44 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3 0/4] x86: Always try to fill acpi_rsdp_addr in boot
 params
Message-ID: <20190531092743.qgwku2ob4trduadr@verge.net.au>
References: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524062321.24126-1-kasong@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022747_446175_A9DE0D73 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 02:23:17PM +0800, Kairui Song wrote:
> This patch sync the behavior of user space kexec and kexec_file_load,
> they will both fill the boot_params.acpi_rsdp_addr with a valid RSDP
> value, to make sure second kernel can always get the RSDP consistently.
> 
> This will make it effortless to boot newer version of kernel (5.0+)
> without specifying acpi_rsdp= cmdline on EFI system even with EFI
> service disabled. Should not change any behavior with older kernels.
> 
> Update from V2:
>   - Drop unneeded 'packed' attribute for boot parameters structure
>   - Don't trust kernel cmdline as a reliable acpi rsdp source
> 
> Update from V1:
>   - Split into multiple patches for a cleaner structure, content is not
>     changed.

Thanks Kairui,

applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
