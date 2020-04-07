Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0643A1A0D88
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 14:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=imymEEwZw2WUpnE7MWOemqvaHX1pmTBxqN3IssCcc9M=; b=asEVIwVpUFixsy
	y+ZPpEK0u4kJT1QhnNdOgOYn4j1AOxqUaxbvt7yt6EY+spBDdt5emqOnLCKxV6YdLcKuTmA1Ct0rY
	pAoxwbh8MxR2tjYei/UxSHoZacshBatdMPKND/w2RiQH/U13woqIxT5niLhtUeyCZ/zF7nH0+mt3+
	E+FZkU+3ZF0iiNoDL+uBeVfwJbB8UB2G4ULxtASemdVH2xwGzA0azZYg7mpBr2BA0gfhiQ+/RosaR
	+sO3rFMVrih5nUaqiUpn7SIp3wqYOBVA8Ia/fx16ILJ0d3QN2DfTYTWDL6YXw1uLZcWkmnj3F87K4
	DCA1aDahrbyy+fLAHM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnJE-0007Ef-TV; Tue, 07 Apr 2020 12:26:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnJB-0007EI-TL
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 12:26:27 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 59E5225B75F;
 Tue,  7 Apr 2020 22:26:24 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 4BF201B71; Tue,  7 Apr 2020 14:26:22 +0200 (CEST)
Date: Tue, 7 Apr 2020 14:26:22 +0200
From: Simon Horman <horms@verge.net.au>
To: Petr Tesarik <ptesarik@suse.com>
Subject: Re: [PATCH] kexec-tools: s390: Reset kernel command line on syscall
 fallback
Message-ID: <20200407122622.GC17530@vergenet.net>
References: <20200403111916.14663-1-ptesarik@suse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403111916.14663-1-ptesarik@suse.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052626_095546_DD57CB45 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 01:19:16PM +0200, Petr Tesarik wrote:
> The command line is duplicated on s390 if kexec_file_load(2) is not
> implemented. That's because the corresponding variable is not reset
> to an empty string before re-parsing the kexec command line.
> 
> Fixes: 9cf721279f6c ("Reset getopt before falling back to legacy syscall")
> Signed-off-by: Petr Tesarik <ptesarik@suse.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
