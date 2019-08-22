Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9F4798E67
	for <lists+kexec@lfdr.de>; Thu, 22 Aug 2019 10:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=loerOA4MUePiUvKIT7mFEaDWP/IlDa+vF1kc7ufvKpQ=; b=fMIa/qUJZYZNJ9
	dmXblGtEn6LrVdaP9vqkNJ5p7496F+inra6Jvoo1hW22PqUewYYaUdVmyQlUWa3I+lD5sVF8DYXbU
	nItTjwFmbn8hlRxjwd2POu82XxPBVn8pja0H0W0/UgiUnd6G70qWNJyRW39GmeHHk9QLCP++RqnXd
	Bn1vrAVX6KzYXUgME1enqlXUdRLGy5PsNFuW8C150xACT1p0bmbmuqzGAiPJzBr08UZV4pVZNw9vf
	EGDmoRYd9ynWV24fPMgr6qy5aiUbeeCOCVXx8aYIONew+SfyML5PbRBAMaaA5uxeyb3Mpv+XdMUir
	5Si7Sfn5iNwodHUfAZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ipZ-0002jp-FE; Thu, 22 Aug 2019 08:52:29 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ipN-0002he-2g
 for kexec@lists.infradead.org; Thu, 22 Aug 2019 08:52:19 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id B618025AD59;
 Thu, 22 Aug 2019 18:52:15 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 4C65A940804; Thu, 22 Aug 2019 10:52:11 +0200 (CEST)
Date: Thu, 22 Aug 2019 10:52:11 +0200
From: Simon Horman <horms@verge.net.au>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 2/2] Limit the size of vmcore-dmesg.txt to 2G
Message-ID: <20190822085211.j2y736chwesxga4l@verge.net.au>
References: <20190815033756.15587-1-lijiang@redhat.com>
 <20190815033756.15587-3-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815033756.15587-3-lijiang@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_015217_262271_F7E7F350 
X-CRM114-Status: GOOD (  15.82  )
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
Cc: kasong@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, junw99@yahoo.com, bhe@redhat.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Aug 15, 2019 at 11:37:56AM +0800, Lianbo Jiang wrote:
> With some corrupted vmcore files, the vmcore-dmesg.txt file may grow
> forever till the kdump disk becomes full, and also probably causes
> the disk error messages as follow:
> ...
> sd 0:0:0:0: [sda] tag#6 FAILED Result: hostbyte=DID_BAD_TARGET driverbyte=DRIVER_OK
> sd 0:0:0:0: [sda] tag#6 CDB: Read(10) 28 00 08 06 4c 98 00 00 08 00
> blk_update_request: I/O error, dev sda, sector 134630552
> sd 0:0:0:0: [sda] tag#7 FAILED Result: hostbyte=DID_BAD_TARGET driverbyte=DRIVER_OK
> sd 0:0:0:0: [sda] tag#7 CDB: Read(10) 28 00 08 06 4c 98 00 00 08 00
> blk_update_request: I/O error, dev sda, sector 134630552
> ...
> 
> If vmcore-dmesg.txt occupies the whole disk, the vmcore can not be
> saved, this is also a problem.
> 
> Lets limit the size of vmcore-dmesg.txt to avoid such problems.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>

Thanks, this looks good to me.

Please repost this patch with an updated version of Patch 1/2.

> ---
>  vmcore-dmesg/vmcore-dmesg.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
> index ff0d540c9130..5ada3566972b 100644
> --- a/vmcore-dmesg/vmcore-dmesg.c
> +++ b/vmcore-dmesg/vmcore-dmesg.c
> @@ -1,8 +1,18 @@
>  #include <elf_info.h>
>  
> +/* stole this macro from kernel printk.c */
> +#define LOG_BUF_LEN_MAX (uint32_t)(1 << 31)
> +
>  static void write_to_stdout(char *buf, unsigned int nr)
>  {
>  	ssize_t ret;
> +	static uint32_t n_bytes = 0;
> +
> +	n_bytes += nr;
> +	if (n_bytes > LOG_BUF_LEN_MAX) {
> +		fprintf(stderr, "The vmcore-dmesg.txt over 2G in size is not supported.\n");
> +		exit(55);
> +	}
>  
>  	ret = write(STDOUT_FILENO, buf, nr);
>  	if (ret != nr) {
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
