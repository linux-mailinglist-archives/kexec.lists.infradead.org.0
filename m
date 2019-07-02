Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC365CE2F
	for <lists+kexec@lfdr.de>; Tue,  2 Jul 2019 13:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RiQEyvckVHl7ZO4PIzR7272OgSMJp/lw0csy5dmzevI=; b=I8LxEiyB1mFA40
	IYyZzi1QuKxipZzJe8jbwPUUESlLbcox6B2LhvIQgc20LHWA5VVrgY03RgwcCOyQrxc6ttWRrJJec
	mbil5LmFx6egqPrKY6DpZFFxxW3cVgzEbj3WVKBs/rnVITu+TLtTefzn8CVKaM/hD6PTwy5/5S+M+
	NtguUtuiO1K6oWDxfNN4eM+Bv0iP4BcbhfSQHlITeuGV8dR5/QoGg2IGNrl98+Nai1r7zQMaT9yBN
	R//VXdBqVc/zqwybP0d/XHlKgYXsDH7QYI16nlIAEaMymV7QbrbwR6mdq4Ow2JprgfQ/p5cuKmfvE
	rVLUEn7QWDH9c7jdU6Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGiF-0002Dk-DD; Tue, 02 Jul 2019 11:12:39 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGiB-0002DL-Ry
 for kexec@lists.infradead.org; Tue, 02 Jul 2019 11:12:37 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E1FAB25AEC8
 for <kexec@lists.infradead.org>; Tue,  2 Jul 2019 21:12:34 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id E8C47940476; Tue,  2 Jul 2019 13:12:32 +0200 (CEST)
Date: Tue, 2 Jul 2019 13:12:32 +0200
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: [ANNOUNCE] kexec-tools v2.0.20 preparation
Message-ID: <20190702111232.6yqywbph6tmglmew@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_041236_047816_F5C59FC7 
X-CRM114-Status: UNSURE (   4.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi all,

I am planning to release kexec-tools v2.0.20 in the next two weeks
to roughly coincide with the release of the v5.2 kernel.

I would like to ask interested parties to send any patches they would like
included in v2.0.20 within one week so that I can make an rc release.

For reference the patches queued up since v2.0.19 are as follows:

40805e393b2f crashdump/x86: Use new introduce helper for getting RSDP
b071fc084bda x86: Always try to fill acpi_rsdp_addr in boot params
cedeee0a3007 x86: Introduce helpers for getting RSDP address
402351390f31 x86: Update boot parameters defination
c072bd13abbe x86: Find mounts by FS type, not name
23aaa44614a0 x86: Check /proc/mounts before mtab for mounts
eff53089523c xen: Avoid overlapping segments in low memory
fb5a8792e6e4 x86: Introduce a new option --reuse-video-type
3757ef630b72 kexec-tools 2.0.19.git

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
