Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE901158F0
	for <lists+kexec@lfdr.de>; Fri,  6 Dec 2019 23:12:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIP1vanW2FmXoeYBQ0Np7RGKxFJc3W9NIL3Z5plp2uM=; b=USuHQPHUsUxvRJ
	9PLcKFHH6UVPi7Evacp2uO90tQoIt8TR/Dbm00ST4re/W3TgYDE7np8PU5z2HCGYFD97Y8z9wG64/
	j5TVH7GfmULPplUaD27Db0+D69YAB5A05UG+2K9U3aNsl+3rUt9QhjQlF2gC7RJPLfknmeXXYdA6b
	c9rQF7rvABU4yz3W5a6oD9sW3lItM+SSoTf5fOlQPN8rD5/3UVPfFTRtOdBQWkxQ1xPWi0CR9sglD
	H5s9xgDwQE9gORXFWDNpWoGh3cD+3X5smihzjj9DX/YgmSK1lXBIiNx1d60QqI2mNWI5fBcatp12W
	501c2jXbe5rp5aUu30AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idLpN-0006AD-2q; Fri, 06 Dec 2019 22:11:57 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idLpG-00069a-Vb
 for kexec@lists.infradead.org; Fri, 06 Dec 2019 22:11:52 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB6MBiAD013986
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Sat, 7 Dec 2019 07:11:44 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB6MBiK6009553;
 Sat, 7 Dec 2019 07:11:44 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB6MAwkT006757; 
 Sat, 7 Dec 2019 07:11:44 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-11063838;
 Sat, 7 Dec 2019 07:11:02 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0439.000; Sat, 7
 Dec 2019 07:11:01 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Pingfan Liu <piliu@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: RE: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Topic: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Thread-Index: AQHVqax/wdTLCYKVa02W9vBLyeR8caeqiAKA
Date: Fri, 6 Dec 2019 22:11:01 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
In-Reply-To: <1575358627-17152-1-git-send-email-piliu@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.75]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_141151_278572_FC35C492 
X-CRM114-Status: GOOD (  11.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pingfan,

> -----Original Message-----
> In refiltering mode, each sub process inherits bitmap2->fd from parent.
> Then they lseek()/read() on the same fd, which means that they interference
> with each other.
> 
> This breaks the purpose of SPLITTING_FD_BITMAP(i) for each sub process.
> Fix it by assigning a sub process dedicated fd to bitmap2->fd.
> 
> Signed-off-by: Pingfan Liu <piliu@redhat.com>

Thanks for the patch.
I'm still reading the code, but it might be better to apply this to bitmap1->fd
as well?  see you next week..

Thanks,
Kazu

> ---
>  makedumpfile.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index d76a435..1dc8640 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -8857,7 +8857,8 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
>  	if (info->flag_cyclic) {
>  		if (!prepare_bitmap2_buffer())
>  			return FALSE;
> -	}
> +	} else if (info->flag_refiltering)
> +		info->bitmap2->fd = info->fd_bitmap;
> 
>  	/*
>  	 * Write pages and bitmap cyclically.
> --
> 2.7.5
> 



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
