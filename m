Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D5C5DF48
	for <lists+kexec@lfdr.de>; Wed,  3 Jul 2019 10:04:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dJnT4//+Qwq3TI7vFKiG8JM5YZZDgt8kmwwK4NSecmE=; b=sT9
	+FjROaw+3uQiOtaI3VHFrmREaALfzJ3lOoYXLpMQKiUrdGX8LkthSvieEOb0SUwLam/Ek4AdUXcvo
	w9qf+3359LiGmQsJ5yQ6xzm0qpxWV7ZmsNyAyIYGe4AA97MNOyKht9Xk6/EYQFpaMGI4MffziAVVY
	Oac0zx5pmHds7Sva5bEJkgjCcLJp3mH8/4eICSEXcKhyh6q/imBOOld2CDmbZJlNjLnZqAACHNB8W
	616Lds8T6XTk2gXAK1rmRgWMZoBIvgzbnPCQph2KrCzqs26wlmdYWRMcWh/6934uGELVZPPez+B5K
	Ds+Ifzi12WZaoncSj8m2fKANxoqRUSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaG7-0000d6-Db; Wed, 03 Jul 2019 08:04:55 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaG2-0000ZH-JJ
 for kexec@lists.infradead.org; Wed, 03 Jul 2019 08:04:52 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 08E2B25AEEC;
 Wed,  3 Jul 2019 18:04:48 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 179939403B8; Wed,  3 Jul 2019 10:04:46 +0200 (CEST)
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: [PATCH kexec-tools] x86: re-order includes to avoid duplicate struct
 e820entry
Date: Wed,  3 Jul 2019 10:04:32 +0200
Message-Id: <20190703080432.28806-1-horms@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_010450_806308_127BACBA 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms@verge.net.au>, Dave Young <dyoung@redhat.com>,
 Kairui Song <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 Lianbo Jiang <lijiang@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

xenctrl.h defines struct e820entry as:

	if defined(__i386__) || defined(__x86_64__)
	...
	#define E820_RAM	1
	...
	struct e820entry {
		uint64_t addr;
		uint64_t size;
		uint32_t type;
	} __attribute__((packed));
	...
	#endif

 $ dpkg-query -S /usr/include/xenctrl.h
 libxen-dev:amd64: /usr/include/xenctrl.h
 $  dpkg-query -W libxen-dev:amd64
 libxen-dev:amd64	4.8.5+shim4.10.2+xsa282-1+deb9u11

./include/x86/x86-linux.h defines struct e820entry as:

	#ifndef E820_RAM
	struct e820entry {
		uint64_t addr;  /* start of memory segment */
		uint64_t size;  /* size of memory segment */
		uint32_t type;  /* type of memory segment */
		#define E820_RAM    1
		...
	} __attribute__((packed));
	#endif

Since cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
./kexec/arch/i386/kexec-x86-common.c includes

	+#include "x86-linux-setup.h"
	 #include "../../kexec-xen.h"

When xenctrl.h is present the above results in:

 $ gcc
 ...
 In file included from kexec/arch/i386/../../kexec-xen.h:5:0,
                  from kexec/arch/i386/kexec-x86-common.c:43:
 /usr/include/xenctrl.h:1271:8: error: redefinition of 'struct e820entry'
  struct e820entry {
         ^~~~~~~~~

 In file included from kexec/arch/i386/x86-linux-setup.h:3:0,
                  from kexec/arch/i386/kexec-x86-common.c:42:
 ./include/x86/x86-linux.h:16:8: note: originally defined here
  struct e820entry {
         ^~~~~~~~~
 ...
 $ gcc --version | head -1
 gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516

To militate this this problem re-order the includes so that
x86-linux.h is included after xenctrl.h and thus
struct e820entry will only be defined once due to it
being devined conditionally in x86-linux.h.

In practice the definitions are the same so it should
not matter which is chosen.

It also seems rather unpleasent to me to need to play
with include ordering. Perhaps a better solution in the longer
term would be to rename the local definition of struct e820entry.

Fixes: cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
Signed-off-by: Simon Horman <horms@verge.net.au>
---
 kexec/arch/i386/kexec-x86-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
index 5c55ec8a2cd3..61ea19380ab2 100644
--- a/kexec/arch/i386/kexec-x86-common.c
+++ b/kexec/arch/i386/kexec-x86-common.c
@@ -38,9 +38,9 @@
 #include "../../kexec-syscall.h"
 #include "../../firmware_memmap.h"
 #include "../../crashdump.h"
+#include "../../kexec-xen.h"
 #include "kexec-x86.h"
 #include "x86-linux-setup.h"
-#include "../../kexec-xen.h"
 
 /* Used below but not present in (older?) xenctrl.h */
 #ifndef E820_PMEM
-- 
2.11.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
