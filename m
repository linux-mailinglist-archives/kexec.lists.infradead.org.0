Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1D0116529
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 04:02:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FFwidt0X6Uy7ZNWxOvmYtaAuN2BFBPbcpjFrDPTT5HA=; b=AaqzM5h8yiPjbh
	kGRaxAJDxxwJGbCxuVx+NJZuen7Kq6BA/PXJ3MMXs1RNaouWKdt89bKTphqFRG4w0kirJNeBePTBT
	fYFeVCwXcJ7ArdT0htyGMTmDOTThrGV7UjvshajTikg84gDlkSsUWfcJfDJasjr4I37YuixkTmJNX
	M4DmufGNYNfyc44xTxUklT6NwuDyO6zbwHnO7G+mGh4w7MHh2TIGfaN5DHO1SWJ2rr+ME9RzSCEms
	SzTNVWgKEj/qNd3K3ZGw9s9kWK/rPawLV5pYKadoPjrK4gRp6XcYMAIcopZ36PBM7tWVSShpi40Nc
	dr/mNEE6zc5vOpP9d7KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie9JX-000699-B0; Mon, 09 Dec 2019 03:02:23 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie9JP-00068J-G3
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 03:02:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id b19so6456102pfo.2
 for <kexec@lists.infradead.org>; Sun, 08 Dec 2019 19:02:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NbnsQ6ttBdh/Z/p6HKp+CY97QZQdRbJ9oPgvtM/X3Xk=;
 b=UqR48An0tfqvHjq/UHrgSgERccvByqklZebNFmIzyHBPsp3DcP29jBrAtbNOopkKfp
 fgJYRqkbswS/wiiDwlRCu3DJYHi/1aC//Zy5pTi7J0OVW6UHkFQKZXOcs+OMVTwtK2zT
 obluGXLQTOk8bvwqXcwtul7vuclqcwztBHIDUmmnc4jA32ji14qcCudxPJavX6Irs/iT
 PUm1NzQhqmvC5+C1y1+PTIgaRR/a57mBerAI5ECJp4b/kIyiLp5fkevyjAXT565pQ4QN
 3dtTpLUAZBC+NYLXYkbGr1259qR2aIWtmgt2vwjdw27nKXRw2p7fG+R5AoY5rMjycuca
 uz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=NbnsQ6ttBdh/Z/p6HKp+CY97QZQdRbJ9oPgvtM/X3Xk=;
 b=PcZpnqy9VJgD84yGN1utNJizeIc2qvawAivN1fEY1xFlnST/32nUKIJf9fe1bKxvTo
 ipJZWIOt+v9+Cu9pzxlPaQKSIaNan4swBbz1z//BHHtO/rF7o+DCXUfes6YNvr/huUtP
 owS51Q3zgB1/0690MM94tKWh77upmFgBsw82Hrkm6cWJyK+4TXkQoeKmeX4+bNduMAXu
 GUNH3agdP5WgFQT12YJGH2QolNyGEN5DxO+rfli42BOjgsen5aF1NSoRjekFDux51BIY
 6nLjTPITCA6CKnlm7TfxoDIwd6DCEwieAYi1d1CuXOpHFtciQIO8T5x8M+HTs337rPdK
 bISQ==
X-Gm-Message-State: APjAAAWx444yX0CLg5+26tL+LLvP0/lCUrFl3hAlnbHnLHvdZXyovxF4
 1Xkb9hCiVMrVjz4RFkhIPjvXdQ==
X-Google-Smtp-Source: APXvYqyFDl32R/rnwpVkKgrNnE1eRzlqR9wwFkEon9M0auaRUzwaRi9sgW8y2FSWf8RbQdA7tC4HnA==
X-Received: by 2002:a62:382:: with SMTP id 124mr2496242pfd.11.1575860533827;
 Sun, 08 Dec 2019 19:02:13 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id z19sm23401431pfn.49.2019.12.08.19.02.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 08 Dec 2019 19:02:13 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v3 0/2] arm64: kexec_file: add kdump
Date: Mon,  9 Dec 2019 12:03:43 +0900
Message-Id: <20191209030345.5735-1-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_190215_564484_C479C452 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This is the last piece of my kexec_file_load implementation for arm64.
It is now ready for being merged as some relevant patch to dtc/libfdt[1]
has finally been integrated in v5.3-rc1.
(Nothing changed since kexec_file v16[2] except adding Patch#1.)

Patch#1 is preliminary patches for libfdt component.
Patch#2 is to add kdump support.

Bhepesh's patch[3] will be required for 52-bit VA support either against
legacy kexec or kexec_file.
Once this patch is applied, whether or not CONFIG_ARM64_VA_BITS_52 is
enabled or not, a matching fix[4] on user space side, crash utility,
will also be needed. 
# NOTE:
# As of v5.5-rc1, crash utility doesn't work due to the commit
# b6e43c0e3129 ("arm64: remove __exception annotations").
# But the fix is trivial and it won't affect this kernel patch.

Anyway, I tested my patch, at least, with the following configuration:
1) CONFIG_ARM64_BITS_48=y
2) CONFIG_ARM64_BITS_52=y, but vabits_actual=48

(I don't have any platform to use for
3) CONFIG_ARM64_BITS_52=y, and vabits_actual=52)

[1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
    v1.5.0-23-g87963ee20693"), in particular
	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
[3] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/693411.html
[4] https://www.redhat.com/archives/crash-utility/2019-November/msg00014.html

Changes in v3 (Dec 9, 2019)
* rebased to v5.5-rc1
* remove v2's patch#2 as the same fix has been applied
* Otherwise, no functional changes (since v1)

Changes in v2 (Nov 14, 2019)
* rebased to v5.4-rc7
* no functional changes

v1 (Sept 12, 2019)
* on top of v5.3-rc8

AKASHI Takahiro (2):
  libfdt: include fdt_addresses.c
  arm64: kexec_file: add crash dump support

 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
 lib/Makefile                           |   2 +-
 lib/fdt_addresses.c                    |   2 +
 5 files changed, 109 insertions(+), 9 deletions(-)
 create mode 100644 lib/fdt_addresses.c

-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
