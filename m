Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E40DF1F06B3
	for <lists+kexec@lfdr.de>; Sat,  6 Jun 2020 15:21:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=la80W4zjUrLNEWpRXkZXidnu2QgeCdlz5LiYbzfguWE=; b=QR5gO+EMsOqdBX
	zTP8rQ67E9R/N+kl80hUC+7VDw6K4qwPKUeCr9YgXfB0y0nvu0OC/jStpaenQUzte08irkO17zX5P
	P6dEhOCAqRXBaXwSlU8vNSc5Upo0+BdrKqjKLpaKUd3cksjwq4L0XuW1zG5hvpFxS3gmVbsCT/uAa
	W33+HhohE1AkSn0S0D/ODX8DY7NWY6QRvJkygIjlqAoIfuyNU1OE5vrR336FP9vvkvUrDRolBRtQJ
	XUp2C0ZXlUQjwcRG5SCH1/wVbne3/6ffQTpOg2FiOHDDC5dZb0rL6XdUymXqxQj4s/5SIPj1yzoJk
	3PjH/SIr3W9DbjJQJjSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhYld-0000M7-Ma; Sat, 06 Jun 2020 13:21:45 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhYla-0000LQ-P6
 for kexec@lists.infradead.org; Sat, 06 Jun 2020 13:21:44 +0000
Received: from madeliefje.horms.nl (unknown [83.161.246.101])
 by kirsty.vergenet.net (Postfix) with ESMTPA id D83D025B805;
 Sat,  6 Jun 2020 23:21:41 +1000 (AEST)
Received: by madeliefje.horms.nl (Postfix, from userid 7100)
 id EC26736C7; Sat,  6 Jun 2020 15:21:39 +0200 (CEST)
Date: Sat, 6 Jun 2020 15:21:39 +0200
From: Simon Horman <horms@verge.net.au>
To: Hari Bathini <hbathini@linux.ibm.com>
Subject: Re: [PATCH] kexec-tools: fix the unintended fallthrough when '-d'
 option is used
Message-ID: <20200606132139.GB24391@vergenet.net>
References: <159107231976.24822.8366905851318047662.stgit@hbathini.in.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159107231976.24822.8366905851318047662.stgit@hbathini.in.ibm.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200606_062142_965221_3AE510DD 
X-CRM114-Status: GOOD (  10.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Kexec-ml <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 10:01:59AM +0530, Hari Bathini wrote:
> Fixes: 28d4ab532808 ("Add generic debug option")
> Cc: Cong Wang <xiyou.wangcong@gmail.com>
> Signed-off-by: Hari Bathini <hbathini@linux.ibm.com>

Thanks, applied.

> ---
>  kexec/kexec.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/kexec/kexec.c b/kexec/kexec.c
> index 7ef3d2a..a62b362 100644
> --- a/kexec/kexec.c
> +++ b/kexec/kexec.c
> @@ -1374,6 +1374,7 @@ int main(int argc, char *argv[])
>  			return 0;
>  		case OPT_DEBUG:
>  			kexec_debug = 1;
> +			break;
>  		case OPT_NOIFDOWN:
>  			skip_ifdown = 1;
>  			break;
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
