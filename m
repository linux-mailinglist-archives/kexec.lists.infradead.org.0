Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3730EF8DA1
	for <lists+kexec@lfdr.de>; Tue, 12 Nov 2019 12:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7jhbHibwWF/gBVAqxKXKdYM5QpGsZF1bnT8ar/MZJ3A=; b=uHgqS6061jFy15csfomcv4Z0Ov
	XNfkpYDO7MBF24fFHRPNKPHlmqOOrR2GIMS8LCchEMBdA6D75SflUic7/In46M9i7DQfY5Kd5vwdO
	Hp0XyBG/1ECi03lWPrIXj5Jbn5z/j5o0U//16j+H18HbGxmiTMpA6l5rPxRTuuVusqMnxtioZRPA9
	KUzcEKDrm3s0GhT7aWRKGJR4lg/YGSv3QvSp2aInQ0xiU2i8Uk/EM/+b36WSG7AmzPv7hjZsl9v1q
	ZmRdzRKdV8++RqS0v0qm/xRK9hiw6xxLbOkLDnhnPBRTdltMpp9LCz5IFILael3QyXuf1YUD7pNpy
	HLAfZOTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU3K-0000gh-WC; Tue, 12 Nov 2019 11:09:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU3F-0000YL-Is
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 11:09:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573556976;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UyExNaInrKKSLSsOovjW5Dn+DoRp4Pt5UioYgifVvSw=;
 b=J7MydDyHXGgr2Z0J7hV9SiyepZDlkZYP1mmZT6uUfWBF27fp/qqTlGq0GwT14bO/sa7U8q
 +UfVJXlDQpdVMO+Xn0LpPIq+FSkX7PxZQmz3Dd+J/fwOXydPti6RqYrMCSenc4NKlbw00Q
 Z/XhamXeXyHxiCaWO0O6+MfUg4Xa87M=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-XdC3_RzdNRqwiyTrRC4XMg-1; Tue, 12 Nov 2019 06:09:35 -0500
Received: by mail-pg1-f200.google.com with SMTP id p8so7792225pgm.9
 for <kexec@lists.infradead.org>; Tue, 12 Nov 2019 03:09:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=f0tjsc1ZNf4DSa5NXy2nETBKwH9th0LJ57eW37jTiog=;
 b=GI4zfeOQo06yAkbyfYM96Kipv3U/9sH8KQyJETn3UP4kUvfWqJpjVw5zbgZI2AnYWM
 G6oXrsmQCRuCsxf0D15SdXfq0jcUEnrQVswMx1Ve8lIG2uIeEZv8mVGHMpR0D4i1jK08
 G6cuP5+BODccQUUhtyw5D1+AdsO4R4BvUD0sx4bp479o+q5VFAev6VEzkXZ0GIR5SuGl
 wJPTjSEUffNIv0NYzJPe4iy5jbXr5VsaLlNdlFkRGVdNwgr7OOzDwy4Dj8c4Bj6TEj+1
 sN+DpiSAQYvGUahDnxN9hDrUti8aoSsXh1kQpUqME4H34r5QaRYzMujBiqfN6qWWH6m6
 wRYA==
X-Gm-Message-State: APjAAAWJKC30qqasVwZ1gWjzMU9UpCBYaUNeMUL66LbSFz0umI0M5vqj
 D5uE/xPRBBWfpHAiS8O1hcOqg5UmPtwPlRIK1TgAPsnluqE+r4Lqqk3flJxa1OEpRvAcUEZs5Jq
 3AnG7QKbz4wz5e4S7HIP1
X-Received: by 2002:a63:6786:: with SMTP id
 b128mr34172455pgc.126.1573556974129; 
 Tue, 12 Nov 2019 03:09:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqw8+c5U+CiJLoLTDx+d9+TdwKEip8MUBWEWvd8qL1xlSSj2zxw91O0TIuOW8XbjW26cPWg0xQ==
X-Received: by 2002:a63:6786:: with SMTP id
 b128mr34172434pgc.126.1573556973821; 
 Tue, 12 Nov 2019 03:09:33 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id q8sm2010535pjp.10.2019.11.12.03.09.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 03:09:32 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v4 4/4] makedumpfile: Mark --mem-usage option unsupported for
 arm64
Date: Tue, 12 Nov 2019 16:38:59 +0530
Message-Id: <1573556939-17803-5-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: XdC3_RzdNRqwiyTrRC4XMg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030937_699968_5D59C9DB 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: John Donnelly <john.p.donnelly@oracle.com>, bhsharma@redhat.com,
 bhupesh.linux@gmail.com, Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patch marks '--mem-usage' option as unsupported for arm64
architecture.

With the newer arm64 kernels supporting 48-bit/52-bit VA address spaces
and keeping a single binary for supporting the same, the address of
kernel symbols like _stext which could be earlier used to determine
VA_BITS value, can no longer to determine whether VA_BITS is set to 48
or 52 in the kernel space.

Hence for now, it makes sense to mark '--mem-usage' option as
unsupported for arm64 architecture until we have more clarity from arm64
kernel maintainers on how to manage the same in future
kernel/makedumpfile versions.

Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 makedumpfile.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/makedumpfile.c b/makedumpfile.c
index baf559e4d74e..ae60466a1e9c 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -11564,6 +11564,11 @@ main(int argc, char *argv[])
 		MSG("\n");
 		MSG("The dmesg log is saved to %s.\n", info->name_dumpfile);
 	} else if (info->flag_mem_usage) {
+#ifdef __aarch64__
+		MSG("mem-usage not supported for arm64 architecure.\n");
+		goto out;
+#endif
+
 		if (!check_param_for_creating_dumpfile(argc, argv)) {
 			MSG("Commandline parameter is invalid.\n");
 			MSG("Try `makedumpfile --help' for more information.\n");
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
