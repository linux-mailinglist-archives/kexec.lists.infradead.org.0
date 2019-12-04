Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB79113112
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 18:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fNQPxIQ2BnTN3e/zc+U+Vs5j5CXhK/BGEoJvEIs3ZG0=; b=JNCNzfBA4DVUfN
	9+whYHkOE7QcdRPLaP6X14Hx6OTKx9eLJthGLMmyvsAeqV7VfWlMf2CXY7OtXd2eq5ODpLB5EI+gL
	CMxJmwBQKilL8ruRcfQ3Au7iSEbbXRIha+LE6OGKdf31BL082RldKdUGdWz49pPG4Jl8nYyHqoieH
	MpSfX0m3rfEWQ2CmoICIl9zOSrslzL8xLQG7J97biljL/lyyYqj2nMPTHpdfOkI4otHKPfLh5Y52n
	qIjK+fBBJP8PYotajlDKOdgD1XAElvUOW9wbpBuIxyGuSuFEozv+gf1Ir12JZ+o0aEFRhG0seQPS7
	WCKQ9VcZxGRTof9BmEQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYmw-0007b3-TB; Wed, 04 Dec 2019 17:50:10 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYmr-0007Et-DF
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 17:50:08 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB4Ho288004074
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 5 Dec 2019 02:50:02 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB4Ho2TU012104;
 Thu, 5 Dec 2019 02:50:02 +0900
Received: from mail02.kamome.nec.co.jp (mail02.kamome.nec.co.jp [10.25.43.5])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB4Ho2hK003760; 
 Thu, 5 Dec 2019 02:50:02 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-10988203;
 Thu, 5 Dec 2019 02:49:27 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Thu, 5
 Dec 2019 02:49:27 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH v4 4/4] makedumpfile: Mark --mem-usage option
 unsupported for arm64
Thread-Topic: [PATCH v4 4/4] makedumpfile: Mark --mem-usage option
 unsupported for arm64
Thread-Index: AQHVmUmtxPX++oocoEqzf96s2rw03aeoz1WA
Date: Wed, 4 Dec 2019 17:49:26 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035971D4@BPXM09GP.gisp.nec.co.jp>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <1573556939-17803-5-git-send-email-bhsharma@redhat.com>
In-Reply-To: <1573556939-17803-5-git-send-email-bhsharma@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.194]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_095007_314309_3AF813E7 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> -----Original Message-----
> This patch marks '--mem-usage' option as unsupported for arm64
> architecture.
> 
> With the newer arm64 kernels supporting 48-bit/52-bit VA address spaces
> and keeping a single binary for supporting the same, the address of
> kernel symbols like _stext which could be earlier used to determine
> VA_BITS value, can no longer to determine whether VA_BITS is set to 48
> or 52 in the kernel space.

The --mem-usage option works with older arm64 kernels, so we should not
mark it unsupported for all arm64 kernels.

(If we use ELF note vmcoreinfo in kcore, is it possible to support the
option?  Let's think about it later..)

Thanks,
Kazu

> 
> Hence for now, it makes sense to mark '--mem-usage' option as
> unsupported for arm64 architecture until we have more clarity from arm64
> kernel maintainers on how to manage the same in future
> kernel/makedumpfile versions.
> 
> Cc: John Donnelly <john.p.donnelly@oracle.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: kexec@lists.infradead.org
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  makedumpfile.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index baf559e4d74e..ae60466a1e9c 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -11564,6 +11564,11 @@ main(int argc, char *argv[])
>  		MSG("\n");
>  		MSG("The dmesg log is saved to %s.\n", info->name_dumpfile);
>  	} else if (info->flag_mem_usage) {
> +#ifdef __aarch64__
> +		MSG("mem-usage not supported for arm64 architecure.\n");
> +		goto out;
> +#endif
> +
>  		if (!check_param_for_creating_dumpfile(argc, argv)) {
>  			MSG("Commandline parameter is invalid.\n");
>  			MSG("Try `makedumpfile --help' for more information.\n");
> --
> 2.7.4
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
