Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C40FD9A9F
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25616Bbi+V6bhDUd0JvOp2/n/vyVpl7b3Xq6vTaPJ8A=; b=J5Er3bWL3eXaa7
	y6EI1A3+W0/2xjhHpJajlFaJIqTSlJlBxktwmCJNhtXZQ0ndMSl+4hb7tpTxX3zPTNw6ry2QDAZEF
	MZ7sckLxoTEdnvA+cSEjdx59EG8IlD5KLvgxl41x9FWXN4iPdWaks5bdQUckVmS4K6gVAZengQFf8
	S1QSnPVbN/+XAjg0FidCX6iQFCTHwgrUDFF/eZBGjEr6uyLgBcIpQYAWEXs3nzqhCZBORyiZqyiO7
	EfS9RaQthBT1O9d6kBghi9ogtJYVnZDO6EbRRX5is+ioXydnwGS5+TGWLO4PiWEAwoJrV89RevgcD
	s7TzdEmmCYa0M3Ktv6zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpU5-0004l3-Ng; Wed, 16 Oct 2019 20:01:25 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTM-00041o-2E
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:43 +0000
Received: by mail-qk1-x744.google.com with SMTP id y144so23964388qkb.7
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=D6xYwFacfqrSDzdKiZLP/TzT9Pqm/HyN3qCUyAhl++JnfcJj1zNrvqFXj80G7H0YAD
 0oC7ITgJ1jpBh7bsno8amd9UDUDHZErELokqD3GaD1kg4LXtwLv8dPsn78AHP6ZqKH39
 E8M8n9Kv/DO9i8z90OKfTCngljmk0SNTy9xLhlawUp/NcuhYiPwsq6O7qxMXWh3quoUI
 Wd3TUbPEqiUxf2/4gs4CixenvdexjxXEEDtAz27okuFTHV9DnryTqfEq528hdjMcsw+b
 Omy3Z+4qDZeopuxmjCIHzRvgaTIHLFvL3pr1YdfXc+Z0AclbWLrPwyI7DwzdMFju98+p
 vf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=aLVFNlsC/D8yIwsdpt86d4tvQ583dT2z83SEfD5Z8joLMLzA6RePx//lZVJ1y/kkRi
 IYZMnHqtVwuUamTZGWJhmPax/sdbWWGb/3F7JCAfwuWg0E0z4H3XmcC5PrOH0Y316evh
 1V9i8a1phtn8orHbBIYvkGLs5NW44iLmOuDpwX/qoe989/z9GAvxWES7vThVfjT4ucJz
 p2MKRLmQ0Opoyo9630BdKpjGwAqzt6KAViJ0b97FA2ssMsUbmeApqaYGy/rAdheXZyeB
 1te4DUt1VWOgf45KI3JOYCXYq9gqtUh1yRydKNSdw+H4rTV4NW4K7Ko4Zhu8LUpY78PK
 hHhg==
X-Gm-Message-State: APjAAAX3ymyxkeMOMCecNFWkKi3esMtu6AVOE178w5rlnyvy1B+coPbQ
 odTxWxH1nSwU4YOizyjVbedUPw==
X-Google-Smtp-Source: APXvYqw/em1XYN8TtYqp0Zy3p+LEV2iCbYfwJbzFt0I3YCF5Whypfh4NQtzdx8ssjs/HvNqnpuzRmg==
X-Received: by 2002:a37:9b81:: with SMTP id d123mr5380291qke.410.1571256038811; 
 Wed, 16 Oct 2019 13:00:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:38 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 01/25] kexec: quiet down kexec reboot
Date: Wed, 16 Oct 2019 16:00:10 -0400
Message-Id: <20191016200034.1342308-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130040_109324_30679379 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 15d70a90b50d..f7ae04b8de6f 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1171,7 +1171,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
