Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09A0117904
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 23:05:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NL6AZvqMop+v8Jz9wAJxc7SRBxqK3t/TZzNq3nFt6o8=; b=h2xyNzgnVeLYy2
	kXYI+uj/kmPNwBne/LhlWYEdsnESX0OUDQWvi3UH6KgbXMk/CoeuYipefMQ5Rdi45A3uyF4ZPan6B
	0ejl4rhssR0iWFuBkQQBR5iSbFTRoAtJelySruMF0Ulfb62GOaQBvt1aoQrxXZc3tJnN2gWi2lW6x
	/jstJf0oS05EaAykOC1KDA+0jaP7nsMJBGGotHSsWcyXxkpELE6QfzAFTbu0Z9c+IjMwjWOaIucFu
	w6cVGWyLkVE7Vgiv0h6c0+YsnfDKhG3biwAYNrz+oEygzLqalrerUoZtBF9Toaj0QzyZfdxlTUVFP
	9BOYIyCTyTbiegp0be0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieR9n-0004EX-Fp; Mon, 09 Dec 2019 22:05:31 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieR9e-00043u-Oc
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 22:05:24 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB9M5Ihv031619
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 10 Dec 2019 07:05:18 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB9M5Ioo027770;
 Tue, 10 Dec 2019 07:05:18 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB9M52Bt029372; 
 Tue, 10 Dec 2019 07:05:17 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.139] [10.38.151.139]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-11087441;
 Tue, 10 Dec 2019 07:02:24 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC11GP.gisp.nec.co.jp ([10.38.151.139]) with mapi id 14.03.0439.000; Tue,
 10 Dec 2019 07:02:23 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Mikhail Zaslonko <zaslonko@linux.ibm.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Topic: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Thread-Index: AQHVqijcM699QktFHE2sTt/h8MFZFaeyVRdA
Date: Mon, 9 Dec 2019 22:02:22 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
In-Reply-To: <20191203222725.64734-1-zaslonko@linux.ibm.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.82]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_140523_080577_337D0A0A 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
Cc: "prudo@linux.ibm.com" <prudo@linux.ibm.com>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Mikhail,

Sorry for late reply.

> -----Original Message-----
> Since kernel v5.2 KASLR is supported on s390. In makedumpfile however no
> support has been added yet. This patch adds the arch specific function
> get_kaslr_offset() for s390x.
> Since the values in vmcoreinfo are already relocated, the patch is
> mainly relevant for vmlinux processing (-x option).

In the current implementation of makedumpfile, the get_kaslr_offset(vaddr)
is supposed to return the KASLR offset only when the offset is needed to
add to the vaddr.  So generally symbols from kernel (vmlinux) need it, but
symbols from modules are resolved dynamically and don't need the offset.

This patch always returns the offset if any, as a result, I guess this patch
will not work as expected with module symbols in filter config file.

So... How about making get_kaslr_offset_arm64() general for other archs
(get_kaslr_offset_general() or something), then using it also for s390?
If OK, I can do that generalization.

Thanks,
Kazu

> 
> Signed-off-by: Philipp Rudo <prudo@linux.ibm.com>
> Signed-off-by: Mikhail Zaslonko <zaslonko@linux.ibm.com>
> ---
>  arch/s390x.c   | 32 ++++++++++++++++++++++++++++++++
>  makedumpfile.h |  3 ++-
>  2 files changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/s390x.c b/arch/s390x.c
> index bf9d58e..892df14 100644
> --- a/arch/s390x.c
> +++ b/arch/s390x.c
> @@ -122,6 +122,38 @@ get_machdep_info_s390x(void)
>  	return TRUE;
>  }
> 
> +unsigned long
> +get_kaslr_offset_s390x(unsigned long vaddr)
> +{
> +	unsigned int i;
> +	char buf[BUFSIZE_FGETS], *endp;
> +
> +	if (!info->file_vmcoreinfo)
> +		return FALSE;
> +
> +	if (fseek(info->file_vmcoreinfo, 0, SEEK_SET) < 0) {
> +		ERRMSG("Can't seek the vmcoreinfo file(%s). %s\n",
> +		       info->name_vmcoreinfo, strerror(errno));
> +		return FALSE;
> +	}
> +
> +	while (fgets(buf, BUFSIZE_FGETS, info->file_vmcoreinfo)) {
> +		i = strlen(buf);
> +		if (!i)
> +			break;
> +		if (buf[i - 1] == '\n')
> +			buf[i - 1] = '\0';
> +		if (strncmp(buf, STR_KERNELOFFSET,
> +			    strlen(STR_KERNELOFFSET)) == 0) {
> +			info->kaslr_offset =
> +				strtoul(buf + strlen(STR_KERNELOFFSET), &endp, 16);
> +			DEBUG_MSG("info->kaslr_offset: %lx\n", info->kaslr_offset);
> +		}
> +	}
> +
> +	return info->kaslr_offset;
> +}
> +
>  static int
>  is_vmalloc_addr_s390x(unsigned long vaddr)
>  {
> diff --git a/makedumpfile.h b/makedumpfile.h
> index ac11e90..26f6247 100644
> --- a/makedumpfile.h
> +++ b/makedumpfile.h
> @@ -1071,11 +1071,12 @@ unsigned long long vaddr_to_paddr_ppc(unsigned long vaddr);
>  int get_machdep_info_s390x(void);
>  unsigned long long vaddr_to_paddr_s390x(unsigned long vaddr);
>  int is_iomem_phys_addr_s390x(unsigned long addr);
> +unsigned long get_kaslr_offset_s390x(unsigned long vaddr);
>  #define find_vmemmap()		stub_false()
>  #define get_phys_base()		stub_true()
>  #define get_machdep_info()	get_machdep_info_s390x()
>  #define get_versiondep_info()	stub_true()
> -#define get_kaslr_offset(X)	stub_false()
> +#define get_kaslr_offset(X)	get_kaslr_offset_s390x(X)
>  #define vaddr_to_paddr(X)	vaddr_to_paddr_s390x(X)
>  #define paddr_to_vaddr(X)	paddr_to_vaddr_general(X)
>  #define is_phys_addr(X)		is_iomem_phys_addr_s390x(X)
> --
> 2.17.1
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
