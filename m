Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6184119ABF5
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJQDj15cbxJQg2/A4aST9QpWekVlBXAh4yyzPj3fR5U=; b=adS7ywoOa6dXbO
	hYmEzFxO/CK9HdXd95x0OqcttvUYCXZhtwJLyeBZaiZ9aA7LCZk5ddmT3/P8v+sverfWFG9htokKx
	b2o1DwcpSZrz6zYn87RYHRqmF++3Tewirco041+aA8HTOnm1wFR2z03WDOTIgC9wjRhaxefiP9pC6
	h8lWemITTDxE3kNkOg6noeGfEUhFaU8L45MmRce4siSBY+l45sQmW4fq3hv0eC1VSTKgrLPQIgEYF
	/HLqnJTCouydmyRg2Cj/jIiyj5PKMd/sHfe3ULRARNUKCJH2JXBfmPm+8gCjsJiEJ4U2DNxA1n9gf
	VdAHvrU3va4tC+ezSJmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcjl-0003lh-Fm; Wed, 01 Apr 2020 12:44:53 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcji-0003lJ-25
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:44:51 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 1985825B779;
 Wed,  1 Apr 2020 23:44:49 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 7B5C31B62; Wed,  1 Apr 2020 14:44:46 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:44:46 +0200
From: Simon Horman <horms@verge.net.au>
To: "Leonidas S. Barbosa" <kirotawa@gmail.com>
Subject: Re: [PATCH] Removing condition that will never be met after calls
 xmalloc and xrealloc
Message-ID: <20200401124446.GD29376@vergenet.net>
References: <20200303035649.GA726@kexec.lxd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303035649.GA726@kexec.lxd>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054450_243220_43397790 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Mar 03, 2020 at 03:56:49AM +0000, Leonidas S. Barbosa wrote:
> Hi,
> 
> Looking in the kexec-tools code I found these conditions that
> seems will never be met. Not sure if that was intentional for explicitity,
> if it was the case, please disconsider this patch.
> 
> 
> 
> 
> xmalloc and xrealloc when fails calls die() that calls exit(1).
> Checks for if(!memory) after they are called will never be met that
> condition, since the process will be exited after an allocation fail.
> 
> Signed-off-by: Leonidas S. Barbosa <kirotawa@gmail.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
