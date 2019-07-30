Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407FA7A510
	for <lists+kexec@lfdr.de>; Tue, 30 Jul 2019 11:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ew1Rs2PLinO0AnW1WdCINDhnuiqwtqPtVJikCVCX5gI=; b=EbBVunFmpp3xZa
	4wc7vG2q7NVRy2a/KlXeMEPp27E7HistgEMNgNgNRa0YlqBQZvnOyVNxLhc5fosCdaNDim/It/AVB
	kuAc8/2LG43JHL5f6h4tbVKB/Ng1RYT+XPL+srPJIk0atXJz7LiUrYfZ9uqwdfSoKw/rAiwYAhDy5
	1m3hOFyfQrS/92xfaKoWobiqtmNUfQwBdpzp8NHsK32rxZFL8ZzY5n/0OulfybX6hEIBOSASi2yEu
	E0jzDexnsDPduHBPgk1OikaaCUXqI0SRynEojqwWLeM4PNysTz2O9UE96bLY30zYrI1LPGMMeKH7U
	HBZrjy6lWuwoatPqSgHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOif-0000Fj-2J; Tue, 30 Jul 2019 09:46:57 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOhr-00085I-N4
 for kexec@lists.infradead.org; Tue, 30 Jul 2019 09:46:09 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6DC63A3B4E;
 Tue, 30 Jul 2019 09:46:06 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-71.pek2.redhat.com
 [10.72.12.71])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A62201001B07;
 Tue, 30 Jul 2019 09:46:03 +0000 (UTC)
Date: Tue, 30 Jul 2019 17:45:59 +0800
From: Dave Young <dyoung@redhat.com>
To: Vasily Gorbik <gor@linux.ibm.com>
Subject: Re: [PATCH] kexec: restore arch_kexec_kernel_image_probe declaration
Message-ID: <20190730094559.GA11557@dhcp-128-65.nay.redhat.com>
References: <patch.git-ff1c9045ebdc.your-ad-here.call-01564402297-ext-5690@work.hours>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <patch.git-ff1c9045ebdc.your-ad-here.call-01564402297-ext-5690@work.hours>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Tue, 30 Jul 2019 09:46:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_024607_825825_0EE72D84 
X-CRM114-Status: GOOD (  15.30  )
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Andrew Morton <akpm@linux-foundation.org>, kexec@lists.infradead.org,
 Eric Biederman <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 07/29/19 at 02:14pm, Vasily Gorbik wrote:
> arch_kexec_kernel_image_probe function declaration has been removed by
> commit 9ec4ecef0af7 ("kexec_file,x86,powerpc: factor out kexec_file_ops
> functions"). Still this function is overridden by couple of architectures
> and proper prototype declaration is therefore important, so bring it
> back. This fixes the following sparse warning on s390:
> arch/s390/kernel/machine_kexec_file.c:333:5: warning: symbol 'arch_kexec_kernel_image_probe' was not declared. Should it be static?
> 
> Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
> ---
>  include/linux/kexec.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> index 1740fe36b5b7..f7529d120920 100644
> --- a/include/linux/kexec.h
> +++ b/include/linux/kexec.h
> @@ -183,6 +183,8 @@ int kexec_purgatory_get_set_symbol(struct kimage *image, const char *name,
>  				   bool get_value);
>  void *kexec_purgatory_get_symbol_addr(struct kimage *image, const char *name);
>  
> +int __weak arch_kexec_kernel_image_probe(struct kimage *image, void *buf,
> +					 unsigned long buf_len);
>  void * __weak arch_kexec_kernel_image_load(struct kimage *image);
>  int __weak arch_kexec_apply_relocations_add(struct purgatory_info *pi,
>  					    Elf_Shdr *section,
> -- 
> 2.21.0
> 

Acked-by: Dave Young <dyoung@redhat.com>

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
