Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 215735CE22
	for <lists+kexec@lfdr.de>; Tue,  2 Jul 2019 13:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gwCHYeoNuWx50u0cEYs+uaItvluXAAHjMu/Zvb0BhXM=; b=Z4drw+ghxz6t0B
	97XamgoDMW0CuqOGMq66InT+pIROFVktsKNviW6TLFFRz3Qdic3WkiDAK5Psy7LIJRLsqIVGb346d
	mJzPl3ZB594NuE6+lQXZ6Tx6C9iZmRjvdNxzxmb1hlEN9owENW0yxkd3T57fq4Ur003tYYUWDRren
	auKLhB+N2dKYV3rSoDsdofnvOT3v23gZ/2kt5XENGH64d5ePQ2aarsfFmMU1JOKYs19rVdddmqkJX
	ZuuVXWt1w3QzKQQMitDJtnXbxaJTjWAx1dRIoo3xJEB2eIwxBlO9gH7CDA6wtdNZhSg9qnfor9W9U
	EEMmNGK5ObI04TmskWdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGfc-0000qi-BH; Tue, 02 Jul 2019 11:09:56 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGfW-0000q9-LI
 for kexec@lists.infradead.org; Tue, 02 Jul 2019 11:09:52 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AE52525AEC8;
 Tue,  2 Jul 2019 21:09:47 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D43FD940476; Tue,  2 Jul 2019 13:09:44 +0200 (CEST)
Date: Tue, 2 Jul 2019 13:09:44 +0200
From: Simon Horman <horms@verge.net.au>
To: Varad Gautam <vrd@amazon.de>
Subject: Re: [PATCH 2/2] x86: Support multiboot2 images
Message-ID: <20190702110944.mcugf6krueakfpam@verge.net.au>
References: <1561630363-6342-1-git-send-email-vrd@amazon.de>
 <1561630363-6342-2-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561630363-6342-2-git-send-email-vrd@amazon.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_040950_845071_957762A6 
X-CRM114-Status: GOOD (  19.61  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Amit Shah <aams@amazon.de>, kexec@lists.infradead.org,
 David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 12:12:43PM +0200, Varad Gautam wrote:
> Add a new type `multiboot2-x86` that allows loading multiboot2 [1] images
> within the relocation range specified in the image header. The image is
> always placed at the lowest available address, regardless of the
> preference information.
> 
> [1] https://www.gnu.org/software/grub/manual/multiboot2/multiboot.html
> 
> Signed-off-by: Varad Gautam <vrd@amazon.de>
> ---
>  include/x86/multiboot2.h         | 416 ++++++++++++++++++++++++++++++
>  kexec/arch/i386/kexec-mb2-x86.c  | 543 +++++++++++++++++++++++++++++++++++++++
>  kexec/arch/i386/kexec-x86.c      |   2 +
>  kexec/arch/x86_64/Makefile       |   1 +
>  kexec/arch/x86_64/kexec-x86_64.c |   2 +
>  kexec/arch/x86_64/kexec-x86_64.h |   5 +
>  kexec/kexec.8                    |  24 ++
>  7 files changed, 993 insertions(+)
>  create mode 100644 include/x86/multiboot2.h
>  create mode 100644 kexec/arch/i386/kexec-mb2-x86.c
> 
> diff --git a/include/x86/multiboot2.h b/include/x86/multiboot2.h
> new file mode 100644
> index 0000000..5693923
> --- /dev/null
> +++ b/include/x86/multiboot2.h
> @@ -0,0 +1,416 @@
> +/*  multiboot2.h - Multiboot 2 header file.  */
> +/*  Copyright (C) 1999,2003,2007,2008,2009,2010  Free Software Foundation, Inc.
> + *
> + *  Permission is hereby granted, free of charge, to any person obtaining a copy
> + *  of this software and associated documentation files (the "Software"), to
> + *  deal in the Software without restriction, including without limitation the
> + *  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
> + *  sell copies of the Software, and to permit persons to whom the Software is
> + *  furnished to do so, subject to the following conditions:
> + *
> + *  The above copyright notice and this permission notice shall be included in
> + *  all copies or substantial portions of the Software.
> + *
> + *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> + *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> + *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL ANY
> + *  DEVELOPER OR DISTRIBUTOR BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> + *  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
> + *  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> + */

As per my comment on your previous posting of this patch:

multiboot2.h does not appear to be licenced as GPLv2.
This seems incompatible with inclusion in kexec-tools.
Can we discuss this?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
