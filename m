Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCE8C999D
	for <lists+kexec@lfdr.de>; Thu,  3 Oct 2019 10:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gO/SyGNq2wAbgBdIxL09C+ziORvRgtSJOQuBJzFZKiA=; b=NQHIdT+TSXvnD6
	ooYmFfGNbuq9IA8Agv96KdNThCml6OqXSLwHpkZfeQv805KnNecJoByHHvPKB4UgTeiUMGwzvpfkk
	lD8Hfo1fAFpsOEaIS7RrHP2oPtsOdo8O6A9qcvZlmlWR025Naj4rJXOce+a76zSXSaKQuXCQJaj9Q
	+t6q7u5b58NnbRNytDU5NRxEd5Uz7Rla3li/VChBK5bQNy35O+jSgF92vTGqm8Iv8PcG9BqZ3goIL
	0rLAmK0kYztfUN+wHGaU70xtg/GWPOQz7rX7KY668nb2sz60dBgRdZ+7Kt0qaDuYe5BQSOrSVe1lv
	mbhmqw8H9M906e5Ei7xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwGH-0005hF-4I; Thu, 03 Oct 2019 08:14:57 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwGD-0005gl-W1
 for kexec@lists.infradead.org; Thu, 03 Oct 2019 08:14:55 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 224E725AED2;
 Thu,  3 Oct 2019 18:14:53 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 20336940852; Thu,  3 Oct 2019 10:14:51 +0200 (CEST)
Date: Thu, 3 Oct 2019 10:14:51 +0200
From: Simon Horman <horms@verge.net.au>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH]kexec-tools: Fix possible out-of-bounds access in ifdown
Message-ID: <20191003081450.mfnicityrpfec2tn@verge.net.au>
References: <20191001150605.GA25636@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001150605.GA25636@ls3530.fritz.box>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_011454_171235_E793D8D9 
X-CRM114-Status: UNSURE (   5.46  )
X-CRM114-Notice: Please train this message.
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
Cc: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 05:06:05PM +0200, Helge Deller wrote:
> Fix a possible out-of-bounds access in function ifdown():
> 
> ifdown.c: In function 'ifdown':
> ifdown.c:56:4: warning: 'strncpy' specified bound 16 equals destination size [-Wstringop-truncation]
>    56 |    strncpy(ifr.ifr_name, ifp->if_name, IFNAMSIZ);
> 

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
