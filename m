Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3137430B7D
	for <lists+kexec@lfdr.de>; Fri, 31 May 2019 11:29:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3ZsEJyIXAKrfZEd5ZgEcJj/1GoM6m6dElm4bY3ePwE=; b=PWD6Z+M6e/DIxu
	maWEi28kKlN1mF5/lKm6DBqRXA4gNmrBIc2Pmrrtlu69cWT8RJJ+Gqz5irxqm+If0F2Xe2tA+ncU3
	SID0u0QW/fKMn0Z8j0EY7mk19fvTrfvY7opvwmn+mq8bW8pdLvjGblAbJP34rXm55wnWOCmjqc+U7
	5hlJvF+rFIWrFCbLiDtKN6JHVAr+ZGDA554GaWBcLUTKlY7J1Stj1y5AHgCg4YeySTBRY9O4nf/pl
	dyQnxkQ1cD+4JA8hepLa23VDAyqJv6CEVP3myw1/Y56xAMnJPO9GTvVv/7pX2AGNJSw9+Ome65sof
	1pi1VO+vBqGQqVJ8kAPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWdqO-0006jR-Ug; Fri, 31 May 2019 09:29:00 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWdqL-0006j2-6s
 for kexec@lists.infradead.org; Fri, 31 May 2019 09:28:58 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 4633625AE77;
 Fri, 31 May 2019 19:28:56 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 48A3E9401DB; Fri, 31 May 2019 11:28:54 +0200 (CEST)
Date: Fri, 31 May 2019 11:28:54 +0200
From: Simon Horman <horms@verge.net.au>
To: Chen Zhou <chenzhou10@huawei.com>
Subject: Re: [PATCH] arm64: support more than one crash kernel regions
Message-ID: <20190531092854.by4sgjggjyozgyaw@verge.net.au>
References: <20190403025504.30480-1-chenzhou10@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190403025504.30480-1-chenzhou10@huawei.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_022857_398314_6A6A3748 
X-CRM114-Status: UNSURE (   8.81  )
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
Cc: takahiro.akashi@linaro.org, wangkefeng.wang@huawei.com,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Apr 03, 2019 at 10:55:04AM +0800, Chen Zhou wrote:
> When crashkernel is reserved above 4G in memory, kernel should
> reserve some amount of low memory for swiotlb and some DMA buffers.
> So there may be two crash kernel regions, one is below 4G, the other
> is above 4G.
> 
> Currently, there is only one crash kernel region on arm64, and pass
> "linux,usable-memory-range = <BASE SIZE>" property to crash dump
> kernel. Now, we pass
> "linux,usable-memory-range = <BASE1 SIZE1 BASE2 SIZE2>" to crash
> dump kernel to support two crash kernel regions and load crash
> kernel high.
> 
> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>

Sorry for letting this slip through the cracks.
Please let me know if this is still relevant.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
