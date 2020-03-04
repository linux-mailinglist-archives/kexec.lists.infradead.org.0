Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A290D178CCD
	for <lists+kexec@lfdr.de>; Wed,  4 Mar 2020 09:50:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HiSJFe6EDSkVfaK4/cBaXPi33b5BGL0lLD+JDwbZaF4=; b=jbrDzESXEP5v5SKvWCG9aT15eZ
	rzwzr3LT9K5T/WpE2YmDX7qk8VReDplM2MDCJNUykc5+VEG4Yphq3bfK2smCCNqfEOSq6kTwcl283
	D9N59nKofq0oZjbmuRArOzhURzSG4kN320m8tdSACMU294AYC3brJ14+ZO7PgdvHo/BXRh+ZxvMv0
	mhjFLjLK+z6txRtKIQnPYC6JDsUflwlAmNbzsUVcXLVcUhrGnVP3qwD5b8TXYJfRTdE28PiuJqSsx
	Nhsr4IhAL3JrtOp/1g/qdLyO12vcN4g3sclDZk1Cw44MnClOyHjmTQUMIoZC8llHwDXOSPfYpeIr9
	gupj+pnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9PjV-0004gh-CP; Wed, 04 Mar 2020 08:50:25 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9PjP-0004fu-Ea
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 08:50:21 +0000
Received: by mail-pl1-x62b.google.com with SMTP id g6so732495plt.2
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 00:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=woJvO5E8fpJd4Q5CNOWhDsXW01yY8MLHyUaA7/jn7L4=;
 b=pu1LyzfNlpYzzHymyQuajEB74i2lHX8Mpq9rMdimauTbQ+i1tjPg/y+r3eEDpkIM9G
 O+3eb3tKIQN6wFbpXqhzxbbsD3A8mz5GBC09X8HWyBWGYQiQXHYX8e6CfRLlSKmvr5/u
 dOcWD9lFIZZz1kdr/9W95dIbYHhEZJ8XUFpS65GSR7pYSIxsleLOYNOTA4IiDWSHJ99M
 pSkYyxSylco/8a8uZ3qFLQLdLr/CJc1x/Yg+B8XQ97Ps9rrAmEenRm46n9RBiisIGdEn
 /IKJWOzvVCG1mtB2yLuBN5uHwaOz9dtlMqpClJmvk+Qf6K0tjf5sTM2PRLrDmsUe5mod
 thCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=woJvO5E8fpJd4Q5CNOWhDsXW01yY8MLHyUaA7/jn7L4=;
 b=YIBqHBCc3tHLJZeimGKv8HmXBGO6B2BFhUv0gPY58I9O5BSh6PEmfNYPgZx8dSzD57
 W+9WA/wIfJaXz9YZ+UAjnxyZHl75ZmEkdPqsDokP6ioYtjyHyNOWpez7rZ4p6pMXridt
 FSIKRi1yaILr8H9KbyEydZovp0mAN49P7fwrXHDiyverKCW6z3bgCdKNVRxIbO1qZc8d
 /Noiu5mp33N3ujPa4fds7mAkMQy7exm4HiSwzmhiRN1JSw9wbUCpavESGmJl3xVTa86G
 GIQtOJLzWN5hbjHQhUo+D/5BYSxz0hp55BvPZCOORTL2Q28WpaWTybohqxyt5GWR4j5W
 MHTA==
X-Gm-Message-State: ANhLgQ39DiFa9/TF/8mKHf/8bxU7Ita7TP8XccPgyuyhRiobGySTf7wP
 RRyRoRchfE7qqwONvB6Dfw==
X-Google-Smtp-Source: ADFU+vt8VxQR7hpj3VOexVfbtnLYfwkksuVYM4nJGhYVwbz4PwS8vVumrMrIQErowUuuVIfmYcMmkw==
X-Received: by 2002:a17:902:9890:: with SMTP id
 s16mr2016577plp.77.1583311814491; 
 Wed, 04 Mar 2020 00:50:14 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v123sm463085pfb.85.2020.03.04.00.50.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 00:50:14 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv3 0/2] pseries/scm: buffer pmem's bound addr in dt for kexec
 kernel
Date: Wed,  4 Mar 2020 16:47:28 +0800
Message-Id: <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_005019_523177_06573238 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Donnellan <ajd@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

V2 -> V3:
   in [2/2], EXPORT_SYMBOL(new_property) and EXPORT_SYMBOL_GPL(of_add_property)

To: linuxppc-dev@lists.ozlabs.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Cc: Oliver O'Halloran <oohall@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Andrew Donnellan <ajd@linux.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: kexec@lists.infradead.org

Pingfan Liu (2):
  powerpc/of: split out new_property() for reusing
  pseries/scm: buffer pmem's bound addr in dt for kexec kernel

 arch/powerpc/platforms/pseries/of_helpers.c | 29 +++++++++++++++++++++++++
 arch/powerpc/platforms/pseries/of_helpers.h |  3 +++
 arch/powerpc/platforms/pseries/papr_scm.c   | 33 ++++++++++++++++++++---------
 arch/powerpc/platforms/pseries/reconfig.c   | 26 -----------------------
 drivers/of/base.c                           |  1 +
 5 files changed, 56 insertions(+), 36 deletions(-)

-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
