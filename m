Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 272851F0081
	for <lists+kexec@lfdr.de>; Fri,  5 Jun 2020 21:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G9n+jzMw7F11Xf9eUDv4NBLU3A3ehrWA6rpsBSBy/Oo=; b=q6h5OO3PMF75BT
	oETQ0XD0dsUgvdUGH5Qfa/VJCVSiHIxkC+hEABA37J1ULnylW2Kwpj8+zM/pqBRhoq+UXg9FL+wET
	Ao4bMfgTSdfBe91GkCivYURQVgc5ubIr6m1GguRdsyB6OZP0GfZBgTxoNvvEvjo9k+4qCSgZIhmWz
	OBjP0ALGi2GTAjOXMIre4VWmONG9UjQCmt4M+E2NsQHi7QSFiIrLTIr6Du9qsDxz00nfiGAd+z7fN
	o+P+LdDUTS9SsW6w0hdtmu26yKNSijkOE89348zUQIs+c8aq0DX18ag0L0PeGUYHT8rchs3warbw3
	FvM0bWGFUqsR7IPc78Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhIIj-0001IO-WA; Fri, 05 Jun 2020 19:46:50 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhIIh-0001HC-II
 for kexec@lists.infradead.org; Fri, 05 Jun 2020 19:46:49 +0000
Received: by mail-qk1-x741.google.com with SMTP id v79so10928516qkb.10
 for <kexec@lists.infradead.org>; Fri, 05 Jun 2020 12:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sV9RkPGuoOWTc48qekF0zZBZDrJUTh4v9fJ0jb/FVgM=;
 b=aWCctjjWnZUSMcT6Ms5TdcGkcFOgab7dXxSb6fkSyYq6HoBdb9Tvqx/v7JVtmCHCeF
 MA6WH5c97FrtUPsQzAeLJBrfPvcx6u4osY0pjoGT567icSJb6ngJWeDN7LzRNO/1k2v5
 lVZA3DRiOXdRRXzpiDkF9e5jdo2c6L2V6bYNbWDqzA7lSv1EM2pdWSsyIvrSk9txVkpI
 Dnj4hRMeKyJVF1EKUNckBjoZxlCyU0dOgDzdyuw8jviCmfSRh4nwwLiHWiznWHA/kj1W
 hSI47S5fsCnJyQsaVJzumAZ8BvZMNwtsZYlNmjcFBUSrv5xdDdLlOHPRdj4yYKO0YqOL
 R09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sV9RkPGuoOWTc48qekF0zZBZDrJUTh4v9fJ0jb/FVgM=;
 b=L2Hnv1IHv/FwEcWXKksV7QGMiPhHL2JdPN5xwvTYGafyhC6/PscWclZTDTPtItbuyn
 wpSjfh2mJwdfMQ83IyOT6Rye+DywLfSl4Ta+D6tGFHJJoUSrEfXXPauQyvrdwgEecUDv
 dH976Fgdd79xGbn2xTLJEbLfdKkULOwj+OIOmxWfyjQvxNVJo8qJ18zKUuk/61L5EOBR
 Yyf4yzvpNrAJ17pj9uURmnB8dE8rLaZ3O+vbLy1dy1/nUWUFyPLalOcHIsOBgVIPIYZ4
 IGdQEx50tn2Y2/7Ys5tCZYsdf6gSO9AvuRJvDjJsQOo+InuRlIZ+hojNUxTmrihAAPc6
 B3jg==
X-Gm-Message-State: AOAM532CWtI9AZBbo47Um2apJ2nxyhPD9pntpIKCS9tGj8si3gGvtKs5
 3HwDzf9fzwHP6WKbikZBbgP8HQ==
X-Google-Smtp-Source: ABdhPJx5xQ9+E/4OYaerdSWSqvwAq/MS3nCOPS274OfID5oocZYxDY8TZg4tLHhGPLbg46ow1XkNcw==
X-Received: by 2002:a05:620a:15e8:: with SMTP id
 p8mr11797085qkm.333.1591386404392; 
 Fri, 05 Jun 2020 12:46:44 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p11sm716242qtb.4.2020.06.05.12.46.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Jun 2020 12:46:43 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 pmladek@suse.com, ebiederm@xmission.com, keescook@chromium.org,
 anton@enomsg.org, ccross@android.com, tony.luck@intel.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] kexec: dump kmessage before machine_kexec
Date: Fri,  5 Jun 2020 15:46:42 -0400
Message-Id: <20200605194642.62278-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_124647_676594_73DC3409 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

kmsg_dump(KMSG_DUMP_SHUTDOWN) is called before
machine_restart(), machine_halt(), machine_power_off(), the only one that
is missing is  machine_kexec().

The dmesg output that it contains can be used to study the shutdown
performance of both kernel and systemd during kexec reboot.

Here is example of dmesg data collected after kexec:

root@dplat-cp22:~# cat /sys/fs/pstore/dmesg-ramoops-0 | tail
...
<6>[   70.914592] psci: CPU3 killed (polled 0 ms)
<5>[   70.915705] CPU4: shutdown
<6>[   70.916643] psci: CPU4 killed (polled 4 ms)
<5>[   70.917715] CPU5: shutdown
<6>[   70.918725] psci: CPU5 killed (polled 0 ms)
<5>[   70.919704] CPU6: shutdown
<6>[   70.920726] psci: CPU6 killed (polled 4 ms)
<5>[   70.921642] CPU7: shutdown
<6>[   70.922650] psci: CPU7 killed (polled 0 ms)

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 kernel/kexec_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index c19c0dad1ebe..50027f759a97 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -37,6 +37,7 @@
 #include <linux/compiler.h>
 #include <linux/hugetlb.h>
 #include <linux/frame.h>
+#include <linux/kmsg_dump.h>
 
 #include <asm/page.h>
 #include <asm/sections.h>
@@ -1181,6 +1182,7 @@ int kernel_kexec(void)
 		machine_shutdown();
 	}
 
+	kmsg_dump(KMSG_DUMP_SHUTDOWN);
 	machine_kexec(kexec_image);
 
 #ifdef CONFIG_KEXEC_JUMP
-- 
2.25.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
