Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B624AC3316
	for <lists+kexec@lfdr.de>; Tue,  1 Oct 2019 13:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=alZV8iq2LqGCIi2Ou4xwbdWM2sBmBT7WBzHmRCAT84c=; b=QvnjvG+YP28vql
	6CVmApcgd+8itCNb1XL86P5O8ZXaGqOPBFkx6mv9EiYglpiTGEsMPpee6MkhV29orVUkQRw67cNJn
	4kjllSkgHnKf6TAru2Q8SwcBfw3JSSSrCC7YeIy7q3SvAx8ptgWVxMbkQ9PIAjLk9lfkakVaqCPzK
	GBxuqEyuBJtpaRs7q/qbeWY3sjKq7Uvyx0zrWkosA50Gc2jOlTmUzIXpvUyFSDZPfMDQaloFXtOhq
	ABCUQ3Af4mpeywB0H1RjuZ4Hgx+QypXFJ2uXoV2nz7wBrmJtavInfoLp+eLEun2nQnpTwu68WJF7w
	DsWGW/Wgt+d8EcxVsZZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGa2-000201-8x; Tue, 01 Oct 2019 11:44:34 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGZy-0001zP-P8
 for kexec@lists.infradead.org; Tue, 01 Oct 2019 11:44:32 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0CE3325B7D2;
 Tue,  1 Oct 2019 21:44:26 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D65B994046A; Tue,  1 Oct 2019 13:44:23 +0200 (CEST)
Date: Tue, 1 Oct 2019 13:44:23 +0200
From: Simon Horman <horms@verge.net.au>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH] kexec-tools: add support for PARISC architecture
Message-ID: <20191001114421.zrbfjxmzlbz23zfy@verge.net.au>
References: <20190919182624.8543-1-svens@stackframe.org>
 <7250dbc3-9d6d-5971-216a-f164a6933f28@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7250dbc3-9d6d-5971-216a-f164a6933f28@gmx.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044430_963322_0CA6D841 
X-CRM114-Status: UNSURE (   8.85  )
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
Cc: kexec@lists.infradead.org, Sven Schnelle <svens@stackframe.org>,
 linux-parisc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Sep 21, 2019 at 08:36:51PM +0200, Helge Deller wrote:
> On 19.09.19 20:26, Sven Schnelle wrote:
> > This patch adds support for the parisc Architecture. kexec support
> > for parisc is included with linux-5.4.
> >
> > Signed-off-by: Sven Schnelle <svens@stackframe.org>
> 
> Tested-by: Helge Deller <deller@gmx.de>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
