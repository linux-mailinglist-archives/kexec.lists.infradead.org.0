Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 865CC1A0D8A
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 14:27:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7WN2tOnM3yxEYFaevgqQ0GNsQ0ac68+pkAgGvZvJBoo=; b=IpzuxbsJaUG88b
	qJA+wApo0xgcrO4M5QOTD+932EPipNORdS1vYc9HM5jMsASWhHGdQWi87SrWI60/1qCYPjUq41Nwx
	GEONbwhvaAnP9IUYVB1eigD8PZ0Y2/tgjKMnb15+UO51yP8tOPVJ0nzrTWrxcxtwHC6Rs+3/UK/FJ
	ZKT7pbI6V64S067U0Owk7GSWdpH3v3WjPa11YZoSHqs8hNizZUN8RxFlzvtzTMw6qvjp7Ifs2Lfp7
	A8p8uJnlr76nii7mE8NBKYjioPAGa3F9hkXAjSXccB+4+obW16xHKI7OUDrM9ZK273Rh+YwDphtMw
	/zZpHJ9xTLJFUEokjTmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnJj-0007JG-Gl; Tue, 07 Apr 2020 12:26:59 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnJf-0007Iv-L9
 for kexec@lists.infradead.org; Tue, 07 Apr 2020 12:26:56 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id B897C25B75F;
 Tue,  7 Apr 2020 22:26:54 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id BAE9B1B71; Tue,  7 Apr 2020 14:26:52 +0200 (CEST)
Date: Tue, 7 Apr 2020 14:26:52 +0200
From: Simon Horman <horms@verge.net.au>
To: Petr Tesarik <ptesarik@suse.cz>
Subject: Re: [v2 0/2] Fix --kexec-syscall-auto on s390x
Message-ID: <20200407122652.GD17530@vergenet.net>
References: <20200313140929.29551-1-ptesarik@suse.cz>
 <20200401124009.GB29376@vergenet.net>
 <20200403134504.4a0304e9@ezekiel.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403134504.4a0304e9@ezekiel.suse.cz>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052655_840842_73530A6E 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Fri, Apr 03, 2020 at 01:45:04PM +0200, Petr Tesarik wrote:
> On Wed, 1 Apr 2020 14:40:09 +0200
> Simon Horman <horms@verge.net.au> wrote:
> 
> > On Fri, Mar 13, 2020 at 03:09:27PM +0100, Petr Tesarik wrote:
> > > From: Petr Tesarik <ptesarik@suse.com>
> > > 
> > > As noticed by Raymund Will, kexec -la does not work on kernels without
> > > the kexec_file_load(2) syscall, revealing some shortcomings in the
> > > automatic syscall selection.
> > > 
> > > Petr Tesarik (2):
> > >   kexec-tools: Fix kexec_file_load(2) error handling
> > >   kexec-tools: Reset getopt before falling back to legacy syscall
> > > 
> > >  kexec/kexec.c | 120 ++++++++++++++++++++++++++++++++--------------------------  
> > 
> > Thanks, applied.
> 
> Thank you very much.
> 
> IBM has just found an issue with the patch, and I've already sent a
> follow-up fix. Sorry for the extra noise.

No problem, thanks for the follow-up.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
