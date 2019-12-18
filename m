Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13FE124E18
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 17:43:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6Bw1GXlDthASrwv5Xrp0+33L1FCRuj+AKzYBTujZ+mQ=; b=gnp
	bJhM47ZDVii2GqS4k7BrAsSc9rL6lOKtx/1V/YJl5VAt896pHqKjgJLy347KjnbouP7ZJMCSMg+4x
	Qp68QkK+1HJ2EMjYtgV+oNkHBpgF9ZPajwsDzGfcB9RosB+7p0QKcV0mvOKYmAZjnUkb7hObW181x
	jUnhIvifzhJXorsy2BF+3F+yLTRrHTLh1jfUEyZoIgc9j2iMtw9brCOka23tLzyfqp5gq2jifTyEu
	pwgk+GGm6b9pGu4HtnSUKKJABRxzw24QrDgcxO4lWgP9j9El0nDjfIQTIgtCw/LXx2IZgcT9IPAHI
	fISmsbn67PkzhUQksRgoY9nWi4LWTCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcQ2-0006WC-8a; Wed, 18 Dec 2019 16:43:26 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcPp-0006G1-Ru
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 16:43:15 +0000
Received: by mail-qt1-x842.google.com with SMTP id k40so2439213qtk.8
 for <kexec@lists.infradead.org>; Wed, 18 Dec 2019 08:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=rGIoXXc/OtkGz52GqtKBYrNlWhwyssYyOOXE+RdKSVU=;
 b=BvbfvIrBO/xWMKBB637aUsGjHUlYkdxN1bIsuJb1GUR/q2gYQ3nlxbpV8v9ULC0+uY
 hARBZBrn3Uxoq6I6tnF8WUz2nY77dzfxlbK1PWB4iQfGk3jWTx9P/9HDGgCynJqfcuiL
 oc55JAU4qLytDFVn4T2xO0t8G2SFIGieYE99pn+Zcq0So5WRfr1yWdKsYiogt+vBuYiQ
 f6mfwhz4obLLQxove8ND/DL5HPorF3/IDOd3eD2RBpbdrPy2pRXERs1FofgxW3LHz5t5
 uP0ozU0HuxQe0HtQ/Els4Ey+OdnKBR/+j0pWvQbs/th3xz8f93XKLEGIuXzHTNJtJvVN
 cxpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=rGIoXXc/OtkGz52GqtKBYrNlWhwyssYyOOXE+RdKSVU=;
 b=pmatyMxLo8ajo5qQjAJ6pZKjMrg/6K9LzCy7iSSFS2eIR6VYzVgFzjODzD9qCx7aQ0
 9dpqIuCd745k9q5uXd0Ti2A0hnFqGx2DGrhAuBMhuZGScJD+ZT0ujv6ReFGVk8zu/Xw5
 MX2QXgT3irFm5Yp1l53hha5N251/aP0QwWi4+cRacsNXadaCU6wW84LoqrOgP71VKQZ1
 XXH9wGtcGUXEfLKXL+81TJ4PDKFFRtvSN5IVHxflYCHydIr+x/PblsHNpj/iNGqAmlXB
 2N3+4wI0zjlDsSWCBUZ9Tv/YbIUltnXg3YYDIe+a5qY4VO/lXMzr7sPXnphx5SDTDv5m
 qpCQ==
X-Gm-Message-State: APjAAAXgn4RZloG41B045THfQIC4hiCeMPHpXcPGWDGbIJjrZvZ1Ijem
 L9DOn+AOjT3jz6b6cib12mCpdWI=
X-Google-Smtp-Source: APXvYqzQNrKY5hIJ/iEZQv5j/6nRgsb+MET42Pm9fGlOp+PPgofS4u0yaArQXDbvV/4Hi0zMv8rFPg==
X-Received: by 2002:ac8:6b06:: with SMTP id w6mr2968131qts.156.1576687392321; 
 Wed, 18 Dec 2019 08:43:12 -0800 (PST)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id r66sm752051qkd.125.2019.12.18.08.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:43:11 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 Simon Horman <horms@verge.net.au>
Subject: [PATCH v3 0/3] arm64: handle "reserved" entries in /proc/iomem
Date: Wed, 18 Dec 2019 11:42:29 -0500
Message-Id: <20191218164232.6086-1-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084313_902076_1DF0EEBC 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 James Morse <james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In recent arm64 kernels, /proc/iomem has an extended file format like:

 40000000-5871ffff : System RAM
   41800000-426affff : Kernel code
   426b0000-42aaffff : reserved
   42ab0000-42c64fff : Kernel data
   54400000-583fffff : Crash kernel
   58590000-585effff : reserved
   58700000-5871ffff : reserved
 58720000-58b5ffff : reserved
 58b60000-5be3ffff : System RAM
   58b61000-58b61fff : reserved

where "reserved" entries can be an ACPI table, UEFI related code or
data. They can be corrupted and result in early failure in booting
a new kernel. As an actual example, LPI pending table and LPI property
table, which are pointed by a UEFI data, are sometimes destroyed.

They are expected to be preserved across kexec'ing.

Changelog:
    v3: - Re-based to the latest commit (bd07796).
        - Added Tested-by tag from Bhupesh and Masayoshi
        - Added an error handling in case
          mem_regions_alloc_and_exclude() fails (0002 patch).

AKASHI Takahiro (3):
  kexec: add variant helper functions for handling memory regions
  arm64: kexec: allocate memory space avoiding reserved regions
  arm64: kdump: deal with a lot of resource entries in /proc/iomem

 kexec/arch/arm64/crashdump-arm64.c |  25 ++---
 kexec/arch/arm64/kexec-arm64.c     | 153 ++++++++++++++++++-----------
 kexec/mem_regions.c                |  42 ++++++++
 kexec/mem_regions.h                |   7 ++
 4 files changed, 153 insertions(+), 74 deletions(-)

-- 
2.18.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
