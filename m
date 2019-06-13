Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874F944CAF
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 21:58:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=inSkUW2HLf5HCHOpuS/lHhdhcEX2+e0cW7hsHn9Y7s4=; b=MyhdLbMPqgZN9b
	jkDyWmzx73Plb5kFfMdAxx93jjCvZaOdVWKy8kmrfVlUXlwnJupFPfeE/CQdWU5H483oJ0mdxWpVi
	gjtyB04dGbD9SIO+td6TuWsYEC6I9XxdiiP4sy6Im5eyvXsltYVZsFzjY3Zlik9xhnydrUrM2wwo1
	bFRD9ItQLad82hKRyDPL2lmAKYrLsoqztxHcpKs6Juf+GH6VX8O345zGyV8yBpOh632cxI/2uYsJu
	M/VwKK02WBo9r/kPYvJxuarHzuzdyFMjv6DVdjA1UwhYMbCGY4jYby2Z8S2QqZz4AMdxBkiD9BfDy
	NZvSa9ro0op5dKpQHURw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVrV-0004IU-KB; Thu, 13 Jun 2019 19:58:17 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVrP-0004HU-4o
 for kexec@lists.infradead.org; Thu, 13 Jun 2019 19:58:12 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x5DJw6r6015503
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <kexec@lists.infradead.org>; Fri, 14 Jun 2019 04:58:06 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5DJw6c8005551
 for <kexec@lists.infradead.org>; Fri, 14 Jun 2019 04:58:06 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5DJw6OA027780
 for <kexec@lists.infradead.org>; Fri, 14 Jun 2019 04:58:06 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-1286167;
 Fri, 14 Jun 2019 04:57:08 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0319.002; Fri,
 14 Jun 2019 04:57:07 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [ANNOUNCE] makedumpfile 1.6.6 preparation
Thread-Topic: [ANNOUNCE] makedumpfile 1.6.6 preparation
Thread-Index: AdUiIKG3j8ZcTgffRvS2bukijAJEGA==
Date: Thu, 13 Jun 2019 19:57:06 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03578556@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.134.150]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_125811_400800_4B936ECF 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

I am planning to release makedumpfile v1.6.6 in the next two weeks.
It will support newer kernels up to v5.1.

If you have any patches that you would like included in v1.6.6,
please send them within one week.

For reference the patches since v1.6.5 are as follows:

8c21fc7e7c52 [PATCH] Support newer kernels up to v5.1
3222d4ad04c6 [PATCH] x86_64: fix get_kaslr_offset_x86_64() to return kaslr_offset correctly
d222b01e516b [PATCH] x86_64: Add support for AMD Secure Memory Encryption
1743c7370868 [PATCH] exclude pages that are logically offline
feee755900e0 [PATCH] ppc64: fix a typo for checking the file pointer for null
2f007b48c581 [PATCH v2] honor the CFLAGS from environment variables
b9da17259ef5 [PATCH] Some improvements of debugging messages
f349b51f6211 [PATCH] ppc64: increase MAX_PHYSMEM_BITS to 2PB

and "[PATCH] makedumpfile/arm64: fix get_kaslr_offset_arm64() to return
kaslr_offset correctly" I posted, if no objection to it.

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
