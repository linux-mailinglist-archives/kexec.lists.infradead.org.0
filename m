Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDDBCC302
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:53:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25616Bbi+V6bhDUd0JvOp2/n/vyVpl7b3Xq6vTaPJ8A=; b=mU09M+9810SIjl
	km0PWBDbA539ORz24HiGIh9u8Dr0KhORepqn3R7eTdyDo4N8YDOMBhjbtPea+v1Q49lkPv7r+cO6q
	ODtjLBKRCQsttcJRdleGOLYrhozOb6bexc23bKmvKU4J3gkYAfd2z2UngPnDotF4AMo6dqPnEGzQ4
	PCyq37gxf4TJpp3ZO+D/CJH5h5NjJKG+I0YmfBrMZH203altZY++G2vUQRXAFJNbsTcfc6j60cZXY
	L2v9UYCpiJa/ys8npeNC20RdckyBJ3jrLu3QZa399SO5Hk+sxSds4OM9Dq8YusR3i4kxiZE9E0xjL
	P59tRIedkMhdmc1W+v3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGShb-0002bY-L6; Fri, 04 Oct 2019 18:53:19 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSgx-00022G-B4
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:52:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id 3so9981883qta.1
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=KXyyk/U3a3Ake5uIAGMpLeR7Q0kB8Wyp7yvAxZlB92sLZghjiV0BDpeYoj/wbGt1l5
 R3q6AjsnUJ6GLrTbwcmOjdnD4CfHBskZbK8TylbWz6ggsmCqOLReOj7ep29t7/s1EeMG
 KGyTKjJxepS8HkKhwSwFy8BmvkL8yDyMXA17xxIXrqwj6MbaKGqKD2QLoip8jD45Hegf
 4b2L8PDJJB/IHOltXinsIZSRf0VXkxxhBpgSD9OdK0kkj6VLz2CSySr0rYTU/+Mt/vHw
 q3shV+dlqn+vajvIWrEMx872Uhxs3k0r5vXSsN52gKNReVdOlx/YZVeqOKeqmQWibfwZ
 k5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7bTbY9wWGaJLNQvZeFd+1QuaD6S0qAHt0InnROLT/Os=;
 b=CcafmdVoYYWQZvhlWGnXm6yN/BtwS2fnCyB4vIOueSF2dAeXz5WrJQSN7QzhHS0WDu
 Ax+kMoBTcFjRchq7XFBjZwAlPuQyfz/+0UXBzWR++/WxgRLXfJrr8ku0pzJuCCJu62ZB
 sL3KPSiIHdKUuyRghe9ZQa6j7smX2SpFucxNF5VFB5ET8Jpn9LKFN8ziit9L+RczzWsB
 ynuIfzXgGh6z78jvn0jjvQeAmqVPnfFR0N5Rjn6KD0mUrOFp11GzDsBzL3F4qqHjIDt/
 30c759geU4QCsyZ65dHgZhx9cGKaHvExx9kZQJ7/Np3iZXbRTWAL1dJOHivkmbU9jXaw
 lR+g==
X-Gm-Message-State: APjAAAUvqCSeiRRFyHDmHE0lXWakLtro9/MaKf1ZDRk8838gUCh++xLu
 SYjjd+0UJigZ4KflsH2uSYCE7w==
X-Google-Smtp-Source: APXvYqyThUzTiS+dwSZXvbUyY+dR397sqlmVrBPBWuKY07TnEBwjhKxQlTHaFo2sBRO2G5DpOma8FQ==
X-Received: by 2002:ac8:3061:: with SMTP id g30mr17524356qte.46.1570215158266; 
 Fri, 04 Oct 2019 11:52:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:37 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 01/17] kexec: quiet down kexec reboot
Date: Fri,  4 Oct 2019 14:52:18 -0400
Message-Id: <20191004185234.31471-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115239_378663_E8E452B2 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
