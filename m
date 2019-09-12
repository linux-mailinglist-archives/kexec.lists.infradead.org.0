Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53154B087C
	for <lists+kexec@lfdr.de>; Thu, 12 Sep 2019 07:58:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N/JC2flQwxexRTDDKHiVEEXH3TMlW0rzEcIfS1cLnbU=; b=NFFS/beVAjCCMj
	13f2WgyYuvZfM10fR+5WBBxAhsC1hdfAQykMMlh0ejrdsOG/wW/hNJ/Rr7hd2GoAVGgcdbi3FVkUc
	aG21fMrdsZa30uqB5J5AyI22o9t67sT+J2idbFo2j0CmqjYz8ZPed+7835WEOvS7jH75GO1gdNuHW
	QbZ2HNXIjgTm8QJUX3xan/KaKnT7XCpB29am3nrckMTnZZf47Mcikl0r5UtTjSJ8kHGOWTp6PZUgE
	S20BBs/8BuQlHlrGpc4exLyedKgxgEesLCiL6CrCoeMJZlQ+aO7SDh9TBLSDWDJEXWFvODJM7JSeU
	PulhPAx/0ezyqlolkFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I84-00013t-9J; Thu, 12 Sep 2019 05:58:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I7w-00013H-R2
 for kexec@lists.infradead.org; Thu, 12 Sep 2019 05:58:46 +0000
Received: by mail-pl1-x643.google.com with SMTP id s17so6362942plp.2
 for <kexec@lists.infradead.org>; Wed, 11 Sep 2019 22:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ewsM+ptx+1TxqOGMUvTLgS+XKJ532sfsZuY42/XtR1w=;
 b=sinym85EOH7jJpDdKQ/TEn8uVKWo7eqXR7VorCouyeWiz9YlVd8iijtdZKbkft+aS2
 cma3rSeSWJ7ndFdyqkGxMchUx8dOKSyLfKMCbyIQidLAoMzaSmx9vLlwLdra8KyKTXQ3
 269kt8q4g7LDXXKCpHg1Vv73xtiXw+VjC1AJpdvhmD6nVoOKl+qkIW3OBOyr9WsVP1ng
 gYyHl0OeSeFxh1c6AWpdTp+dnjVzCyLgYV8HU5B35iGz1ixQHZGzJsTzPCoDnnFhQEy7
 26RfJLNjncKmzsJ+jDkqTyojTnDBSi8O5eDvkn+u08SEwMO1HwZyrkiXNYUeHg2c9Z1E
 8lAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ewsM+ptx+1TxqOGMUvTLgS+XKJ532sfsZuY42/XtR1w=;
 b=CDF1cfESY6p04QsQTYC8X7dZbSGHWO71pRkjVTO1eXQ0HqCEpqkvISu0ICMhbW3NBZ
 GAuOAJHlaxL3OyIgJrhEtBNkkFbtEAdbi/ISklGRx1pa5+WGtISqGH+HWaBnNiybI8rK
 1SgftHZa1zXUMZIMSdnobNALhclVO9tx517a4xYHO95Xj2x21TsOqdL14P3XQejgauC0
 GKB9YCBuvK6xtzVGuAbRL2j0O4IieeoDjP3K/idT5tA8ZO8H8HniMZ4YHZlxxHtvykMC
 lFRIxbMo8eRSWzM19cL9+wQ2kBks2/nhGSgQ0sv/OgIVlGY0ptnDjNZ2L6BOXS3YTlmp
 Zo6g==
X-Gm-Message-State: APjAAAUBhpQHfGVQDQ0I9yonEKYiRgBVV/SFUQWmCoWjisMo1EOM+0fh
 qzbrV3sOvEe7YZyFZRswOHTFPQ==
X-Google-Smtp-Source: APXvYqzZpl0/HTX1R8ymT1ubUa4kovYmNBK+fPCzo83wsXYgya38Pn/fN+mE+kfvEHZnSIqyD+crrA==
X-Received: by 2002:a17:902:8b85:: with SMTP id
 ay5mr35629312plb.120.1568267923917; 
 Wed, 11 Sep 2019 22:58:43 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id r30sm45472534pfl.42.2019.09.11.22.58.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:58:43 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH 0/3] arm64: kexec_file: add kdump
Date: Thu, 12 Sep 2019 15:01:47 +0900
Message-Id: <20190912060150.10818-1-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225844_872803_9A3EA69F 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
(Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)

Patch#1 and #2 are preliminary patches for libfdt component.
Patch#3 is to add kdump support.

[1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
    v1.5.0-23-g87963ee20693"), in particular
	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
[2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html

AKASHI Takahiro (3):
  libfdt: define UINT32_MAX in libfdt_env.h
  libfdt: include fdt_addresses.c
  arm64: kexec_file: add crash dump support

 arch/arm64/include/asm/kexec.h         |   4 +
 arch/arm64/kernel/kexec_image.c        |   4 -
 arch/arm64/kernel/machine_kexec_file.c | 105 ++++++++++++++++++++++++-
 include/linux/libfdt_env.h             |   3 +
 lib/Makefile                           |   2 +-
 lib/fdt_addresses.c                    |   2 +
 6 files changed, 112 insertions(+), 8 deletions(-)
 create mode 100644 lib/fdt_addresses.c

-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
