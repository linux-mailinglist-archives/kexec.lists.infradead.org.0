Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D72410DA58
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 21:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9wPl6q9/21bBcA7+2FH9wRNpuTfhi7JwM9tQw5nWq8=; b=UVjHYu0bprL8/mMUakNlaNJ6FB
	j6CqQi9QOt/OgRcCBRe6mKnSU5G1KRsgz9fOSqyhN0v+nI/sZCNTSsrLCxRJQMcmWXQm/N8Gy5TPn
	VEVA1FbWYXL7UWZpYOFjItIiP3Frz7ccjt1xO+4m4EKD7vAqq7OZqNq+CYvctEscGRTA6GW3t1ry6
	SZO+i7w6T2hVomVBiI5RSaVfiIQFmjzyowv6CYTVW6r3NCP21tvkenue/mYN/xeYC2xpn9seJOmbl
	/e47ZpbhPQWZFRedkhaW37ZCHW00SJLX+VWO/W4fVurNQOvmFl+pXWmztlEcOh2fV3u6iR89e9s0z
	xmfspdvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamSB-0001CX-E8; Fri, 29 Nov 2019 20:01:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamQi-0007FW-1Y
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 19:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057590;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNq9Cl1u8a4Res9gMqZVglO/lwiENzme0qL73M9MY10=;
 b=Xn5WL/5fcfHfHYGqaCb56Nms5mGTDrFImjM5lMm9SPXQiMR8avov3MQm2U377R69ly1Wy9
 MdemmGd+QMX7FJ0PDFZXUte1tfpdJIyVAQA55VJxFVRlm6gKm+RWhumSwxDngartSAHXsA
 7ngXgIAdFVzheLr4v9LmUhyKoV3PdIU=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-288-5Tgun84ANAu3Qy2AuooNlA-1; Fri, 29 Nov 2019 14:59:49 -0500
Received: by mail-pg1-f197.google.com with SMTP id i21so199781pgm.21
 for <kexec@lists.infradead.org>; Fri, 29 Nov 2019 11:59:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EGXp9xk2iujKm5hWzUI7x5fii/ZV0bMMwslmLu+YaOk=;
 b=bxBCuoOqU6oyTgv5LCZZwRJ8hCa12tz7GfndxxfX63yPHyK78a+Fitn0k8gONHjG44
 a5MkeUckcsNSm+JHcl7XTBJ7RFtGPiokflAehnPKrPYaJj06ulaLvVljNfzHeSdHa9eQ
 dZjSX994WLhPKRPge3ySDTt4G+9xyNh+jjd73ODYwSI2cGyHlQFLiKS19da8udHDg4mu
 Bx7x4xlKnBI9r9Dux6Ckv/k6LiZzYj6gI6c4AIt6nU9mBDYd3nepABFNV7XmLWqMN1Kv
 jX4vlUgG7ENEH0i2MSd/jg0t8Z9ikCbmwkriwbKU/3jjgx1aur/Ekfjq6iTRIwuQAVQ4
 BjiA==
X-Gm-Message-State: APjAAAWUN3ORQ0rayv4DZ++XSGU6B8woFampyTnIDTFTnVQiSS1qCDOK
 FjzInb3ZOY4ALNg4KYdxT7FlF8fyoreEPMn+H4XF1qwZ3jULRRWiuQ5Q4SHfvuRt+CrH2gmV0L5
 nEEqMA5fz2MgdOJtoLxsi
X-Received: by 2002:a17:90a:dc81:: with SMTP id
 j1mr3729518pjv.29.1575057588119; 
 Fri, 29 Nov 2019 11:59:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqxPVcE/XW8sUFbfhtiOj/O3Z62tRbLgdRo5GLkRP1HykyImTD8scVfMGcKn/WmLBQBtuJQ40Q==
X-Received: by 2002:a17:90a:dc81:: with SMTP id
 j1mr3729508pjv.29.1575057587944; 
 Fri, 29 Nov 2019 11:59:47 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id 67sm15725516pfw.82.2019.11.29.11.59.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:59:47 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 4/5] Documentation/vmcoreinfo: Add documentation for
 'MAX_PHYSMEM_BITS'
Date: Sat, 30 Nov 2019 01:29:18 +0530
Message-Id: <1575057559-25496-5-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: 5Tgun84ANAu3Qy2AuooNlA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115952_218934_8B094C2F 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-doc@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, Paul Mackerras <paulus@samba.org>,
 Boris Petkov <bp@alien8.de>, Michael Ellerman <mpe@ellerman.id.au>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 bhupesh.linux@gmail.com, linuxppc-dev@lists.ozlabs.org,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dave Anderson <anderson@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add documentation for 'MAX_PHYSMEM_BITS' variable being added to
vmcoreinfo.

'MAX_PHYSMEM_BITS' defines the maximum supported physical address
space memory.

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: x86@kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index 007a6b86e0ee..447b64314f56 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -93,6 +93,11 @@ It exists in the sparse memory mapping model, and it is also somewhat
 similar to the mem_map variable, both of them are used to translate an
 address.
 
+MAX_PHYSMEM_BITS
+----------------
+
+Defines the maximum supported physical address space memory.
+
 page
 ----
 
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
