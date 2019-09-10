Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B38C9AE7E8
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 12:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MISNkJ7tZEHMluaeqXmm0HA5IhGK9TonD4Va4U7eNFI=; b=ESUsKveCmIcKWG
	PhSKwLKUix+OyVLnTlXdIEftktGty62PGlkVr3KV8pizA5jOgTSEZX2ZuTZJgCNNdUYPuJcdLwr2x
	2+R3FNp0LyhKcFA0oW+qSQTnPqPWUwB3JudfDZ3tnZ8G/kEDoo7XoK9QVakl62clb7L58kr+jIZJQ
	hwPsLJ+SQEth6agKFzqbf18OOhuei8YggjTYQYfVIsLUHJ3LAuDJxW12uv/y9bvfErzflAZg6RyeS
	bfkD7/WKHDMv61XimSw2NjyFPr8m0rhCqAuSbILah0F9BWz7McB/aIGV4hgE2S5ClnVn5XaWb2f6B
	Gp9VTiTKDz3n7gFc8cAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7dHd-0007FZ-47; Tue, 10 Sep 2019 10:22:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7dHZ-0007F9-VR
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 10:21:59 +0000
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 51974C007351
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 10:21:57 +0000 (UTC)
Received: by mail-pg1-f197.google.com with SMTP id b18so10375720pgg.8
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 03:21:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=F1YXWxeDB7jEWCaBc8QX+HHGQ595I6ISGvUms+FHwr0=;
 b=j0OM9avRw+ZjeIgtfRl3X+nA4D2xT61U5eO/+6eOeXVeWbhNhbukSV4iHg427HAz2V
 rApzpv49deeUw1bnZsV2EVVUjm6FdAaAvvuFhQaZoCHB9/JrzqXMKFDjch69BO2DgAZy
 SYpYhgRFEcpY3Gb1gBi0LaAKzA7DxDbAtllNBGQAoJj+Vnhh0Asuxm7D3L9GPQ8aS1wS
 +yXbHYxcrK8BW9svEEKgutxWNHd+e8uL35CZ20Voh93qhrcQBY/QyYgCKckh+n/oSplw
 NK8bdaPmfFQEqf8krOBdYyxd5ls5pxpdah/Rf27IfzQy3Tc2Soi/12FCQJ4WwwuJpAfJ
 pE9Q==
X-Gm-Message-State: APjAAAWYy2uD2ztzHMrUOOxZ0V0ivgYjrDMwEf+edzy5hgwUyMux327W
 cQ5bnFgg+2HzFlAMKE5G1HTkJ99NnL6i2CuD3FNv62Ghzmad0ffxoLWzjSocbSl0e1LrmOCpV1D
 6DCdP10lvsix+XMmS4/TI
X-Received: by 2002:aa7:9794:: with SMTP id o20mr35221146pfp.8.1568110916384; 
 Tue, 10 Sep 2019 03:21:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw5gz/CCgDjsPnRPlyBwDfxpGKICKP4ecaWZmqtLbJrYI0YnPS9G9maaRhlFbILrqqhNitnTA==
X-Received: by 2002:aa7:9794:: with SMTP id o20mr35221105pfp.8.1568110916028; 
 Tue, 10 Sep 2019 03:21:56 -0700 (PDT)
Received: from localhost ([171.48.36.77])
 by smtp.gmail.com with ESMTPSA id p68sm31851747pfp.9.2019.09.10.03.21.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Sep 2019 03:21:55 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 0/2] Fix a compilation warning and a static check error
Date: Tue, 10 Sep 2019 15:51:48 +0530
Message-Id: <20190910102150.7229-1-bhsharma@redhat.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_032158_036918_A7B3AD36 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: bhsharma@redhat.com, bhupesh.linux@gmail.com, horms@verge.net.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patchset fixes two kexec-tools issues:
 - Fixes a shifting error reported by cppcheck inside
   'vmcore-dmesg/vmcore-dmesg.c'.
 - Fixes a compilation warning in 'i386/kexec-mb2-x86.c'.

Bhupesh Sharma (2):
  vmcore-dmesg/vmcore-dmesg.c: Fix shifting error reported by cppcheck
  i386/kexec-mb2-x86.c: Fix compilation warning

 kexec/arch/i386/kexec-mb2-x86.c | 2 --
 vmcore-dmesg/vmcore-dmesg.c     | 2 +-
 2 files changed, 1 insertion(+), 3 deletions(-)

-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
