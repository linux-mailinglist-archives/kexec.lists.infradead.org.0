Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744DD12F5B6
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 09:49:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCat5MzJc2ZjRkXBsrYo2UrRJ33i3gM/k/98XcajMvM=; b=OyEvY1n4ywEmgO
	/8u43oX60XdCkZChndktzW8OBMRFmqTTJgfeF++qw0O0htHq8g/IizuR7atGn74aCWL+ZbQLAFxX8
	Lz1SkdNnhtGDxRmXVsHIAR1gXmQji5lLQ+onyv7PYHFTvFWDIVgrSPvbjp/QaoLajWjpUus4XSECI
	56K/OFuVRmeHIXLmah9GrBkxR2XkTeiPeNB/Q8onmsPyXuxYEESgwq5KVJ4G1BWDOX3MRGNKmzGiL
	TZiakLsu2mGouV4PaK186r43++fb10sv/YQosomn8YmtrtKo9N024gH8OeKqhYGf5OOaPtBOtHNyk
	wTw5bjoA8vqHMo9CrFsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inIdu-0004Ei-8B; Fri, 03 Jan 2020 08:49:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inIdr-0004EL-1G
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 08:49:12 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id BDCB825AEFB;
 Fri,  3 Jan 2020 19:49:08 +1100 (AEDT)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B44089402A2; Fri,  3 Jan 2020 09:49:06 +0100 (CET)
Date: Fri, 3 Jan 2020 09:49:06 +0100
From: Simon Horman <horms@verge.net.au>
To: Brandon Maier <brandon.maier@rockwellcollins.com>
Subject: Re: [PATCH] ARM: Use mmap for zImage initrd
Message-ID: <20200103084906.GI17507@vergenet.net>
References: <20191108180854.126452-1-brandon.maier@rockwellcollins.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191108180854.126452-1-brandon.maier@rockwellcollins.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_004911_228312_8BEA4377 
X-CRM114-Status: UNSURE (   7.53  )
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Nov 08, 2019 at 12:08:54PM -0600, Brandon Maier wrote:
> We use a large initrd that maxes out our available RAM when loading
> kexec. The problem can be mitigated by using slurp_file_mmap(), which
> avoids creating a copy of the initrd. The initrd does not use free,
> realloc, etc, so it should be safe to use.
> 
> Signed-off-by: Brandon Maier <brandon.maier@rockwellcollins.com>

Sorry for letting this one slip through the cracks.
I have applied this for inclusion in the next release of kexec-tools.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
