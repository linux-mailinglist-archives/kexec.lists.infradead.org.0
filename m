Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDB0274C5
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 05:23:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMRgpsHKsJWoitXGxZ6PlfbwJ9Mjs99cUIm0NbaSJTY=; b=JRPjKlL0wumj18
	46WcqOC4XFr+ApQLl/71205EuaK24+Mx34yS97oXgnURSKeFQlOEeAaQuQblmsao8Rl8lS44Yg8JU
	z0NQ/0T1ymN/Ol28Vq8Wx0Gw9DIkEQj3Wk1QWEj8O3ptzskZyg3umZf3+hJ9BEnswWelnv03QV6qI
	nG/nJt1987jrowY9W5dThN+8aHLCD7kE8FDTWJzdiHGzQDtVP6UA2rcmIOTEt/x4spaB/1oosPLCX
	Uz0oWkCupBHFHmhu5NXShW9K2eYWPedYOl7QYAXINTkvXXuWwmidvihID6ANKnUqfcjxV9Rygr2+X
	LpspXce5qGPLJ7U38itQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeK2-0003Ko-5h; Thu, 23 May 2019 03:23:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeJy-0003Ih-Ci
 for kexec@lists.infradead.org; Thu, 23 May 2019 03:23:12 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 017E5C057F2F;
 Thu, 23 May 2019 03:23:10 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-185.pek2.redhat.com
 [10.72.12.185])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AED218687;
 Thu, 23 May 2019 03:23:06 +0000 (UTC)
Date: Thu, 23 May 2019 11:23:02 +0800
From: Dave Young <dyoung@redhat.com>
To: Thiago Jung Bauermann <bauerman@linux.ibm.com>
Subject: Re: [PATCH] powerpc: Fix loading of kernel + initramfs with
 kexec_file_load()
Message-ID: <20190523032302.GD8174@dhcp-128-65.nay.redhat.com>
References: <20190522220158.18479-1-bauerman@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522220158.18479-1-bauerman@linux.ibm.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Thu, 23 May 2019 03:23:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_202310_482928_F9ABE4BC 
X-CRM114-Status: GOOD (  19.65  )
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mimi Zohar <zohar@linux.ibm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/22/19 at 07:01pm, Thiago Jung Bauermann wrote:
> Commit b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
> changed kexec_add_buffer() to skip searching for a memory location if
> kexec_buf.mem is already set, and use the address that is there.
> 
> In powerpc code we reuse a kexec_buf variable for loading both the kernel
> and the initramfs by resetting some of the fields between those uses, but
> not mem. This causes kexec_add_buffer() to try to load the kernel at the
> same address where initramfs will be loaded, which is naturally rejected:
> 
>   # kexec -s -l --initrd initramfs vmlinuz
>   kexec_file_load failed: Invalid argument
> 
> Setting the mem field before every call to kexec_add_buffer() fixes this
> regression.
> 
> Fixes: b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
> Signed-off-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
> ---
>  arch/powerpc/kernel/kexec_elf_64.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/kernel/kexec_elf_64.c b/arch/powerpc/kernel/kexec_elf_64.c
> index ba4f18a43ee8..52a29fc73730 100644
> --- a/arch/powerpc/kernel/kexec_elf_64.c
> +++ b/arch/powerpc/kernel/kexec_elf_64.c
> @@ -547,6 +547,7 @@ static int elf_exec_load(struct kimage *image, struct elfhdr *ehdr,
>  		kbuf.memsz = phdr->p_memsz;
>  		kbuf.buf_align = phdr->p_align;
>  		kbuf.buf_min = phdr->p_paddr + base;
> +		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>  		ret = kexec_add_buffer(&kbuf);
>  		if (ret)
>  			goto out;
> @@ -581,7 +582,8 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  	struct kexec_buf kbuf = { .image = image, .buf_min = 0,
>  				  .buf_max = ppc64_rma_size };
>  	struct kexec_buf pbuf = { .image = image, .buf_min = 0,
> -				  .buf_max = ppc64_rma_size, .top_down = true };
> +				  .buf_max = ppc64_rma_size, .top_down = true,
> +				  .mem = KEXEC_BUF_MEM_UNKNOWN };
>  
>  	ret = build_elf_exec_info(kernel_buf, kernel_len, &ehdr, &elf_info);
>  	if (ret)
> @@ -606,6 +608,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  		kbuf.bufsz = kbuf.memsz = initrd_len;
>  		kbuf.buf_align = PAGE_SIZE;
>  		kbuf.top_down = false;
> +		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>  		ret = kexec_add_buffer(&kbuf);
>  		if (ret)
>  			goto out;
> @@ -638,6 +641,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
>  	kbuf.bufsz = kbuf.memsz = fdt_size;
>  	kbuf.buf_align = PAGE_SIZE;
>  	kbuf.top_down = true;
> +	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
>  	ret = kexec_add_buffer(&kbuf);
>  	if (ret)
>  		goto out;
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Reviewed-by: Dave Young <dyoung@redhat.com>

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
