Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C825019ABD9
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LlEp3HR9XdyPu2ol/J7l96QE8CH/dVw7a9edlQG6Hu4=; b=dZz0PyxylWNiaO
	InRjV2WT5lvGUdZyViFvkXiZBxXcC4MxmRIw8Q2fxM+SyV+qTZX7A6sMZzJ8OPFIRY9ozRtpd9FIw
	vf1jJAZs7N9he9P2y6N2l1MOh9nkJRNIa4qqWuGtMfua7QbP3zgOixMI2jBcx9oylm7bpFpPCGqlW
	Rk46rGw1fneLEd49G5IS+J3dCtggnE6pzLHgVi1F0kkx6pXkDdhq0lxorkwNyx8DNPHLiYWBvtRlq
	CD8HDe8S3vXJqvkN6CPBOes91hQrvLTKzPSjWBDyfiPwJLdXO+hqTCuNnP0MTnqX9KYjdz83KmeKa
	DWu1754UuO55O4rMKvXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcfI-000335-Ba; Wed, 01 Apr 2020 12:40:16 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcfF-00032R-Am
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:40:14 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 351E125B779;
 Wed,  1 Apr 2020 23:40:12 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id D26CF1B62; Wed,  1 Apr 2020 14:40:09 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:40:09 +0200
From: Simon Horman <horms@verge.net.au>
To: Petr Tesarik <ptesarik@suse.cz>
Subject: Re: [v2 0/2] Fix --kexec-syscall-auto on s390x
Message-ID: <20200401124009.GB29376@vergenet.net>
References: <20200313140929.29551-1-ptesarik@suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313140929.29551-1-ptesarik@suse.cz>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_054013_544538_479F80E9 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 03:09:27PM +0100, Petr Tesarik wrote:
> From: Petr Tesarik <ptesarik@suse.com>
> 
> As noticed by Raymund Will, kexec -la does not work on kernels without
> the kexec_file_load(2) syscall, revealing some shortcomings in the
> automatic syscall selection.
> 
> Petr Tesarik (2):
>   kexec-tools: Fix kexec_file_load(2) error handling
>   kexec-tools: Reset getopt before falling back to legacy syscall
> 
>  kexec/kexec.c | 120 ++++++++++++++++++++++++++++++++--------------------------

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
