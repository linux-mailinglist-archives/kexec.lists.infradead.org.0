Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8055710CF3A
	for <lists+kexec@lfdr.de>; Thu, 28 Nov 2019 21:26:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=F9wPl6q9/21bBcA7+2FH9wRNpuTfhi7JwM9tQw5nWq8=; b=bzaQ0ngwAq3jKJtp/gyist8v+O
	rtGAwgZvihLraCjblshy8o/QvLlzdcASIWUAieYSiyrfCEjYxchihPdnNqDTkxb+KhbvSi3RBEFAb
	if/NWOgrdWImyqyPjVeW0buzXDwLcV2GvZMbvHLSATBL6DXuyKUlY/zEtVsYaONLxWzL+Olt9yWcu
	A4hV8cjn8zEJEcId18EAQaBFK3SIOt5rr6v+AX9PNiK2iCoQNvIElb09GBuD6brkJtuoTg6VdPT/C
	urp4IZT/jFQ4mF3YKvUEyEUSnOUS/g+6ZK9MjW3zb/EOW2fWUQLax76LlJphP20N5i4mk/OSAH/yI
	5EBxETzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQNC-00084V-8S; Thu, 28 Nov 2019 20:26:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQMC-0007IW-Gy
 for kexec@lists.infradead.org; Thu, 28 Nov 2019 20:25:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972742;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yNq9Cl1u8a4Res9gMqZVglO/lwiENzme0qL73M9MY10=;
 b=Qdd8XcP+mZ1h57BDKIXSnkshbLvUwGWUckT++MY7KdBGHu3joAw9lGiEpubhCroRVEaNuH
 BM15n/v1czqa5BhjKyycCtW/ErI3Wc6oVv0jxCYyqVqUeSZRff3UHQXmbyg8DCnvjE8FSm
 hw9f/0pYUsuBzvbio89DdYrhOxoPeKk=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-79-ppjket8AP7OR_iaWDHnL2Q-1; Thu, 28 Nov 2019 15:25:38 -0500
Received: by mail-pg1-f197.google.com with SMTP id k23so15215774pgl.11
 for <kexec@lists.infradead.org>; Thu, 28 Nov 2019 12:25:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EGXp9xk2iujKm5hWzUI7x5fii/ZV0bMMwslmLu+YaOk=;
 b=qEM9YrspL4Up3bLDOjAiEZd3R0nLeVJTSXO8hRKx4SvMMhaMV4aSJz6D59sShNSn4i
 mf5pF8qc6Hewh1gklLNy3tSeC7w20oLHkhmwpTEvdO2LmecsD1vT0uX2JbRJ0H75/ejx
 C2ayp7ytsKmr86XhFLvJmdAvsXrcR506yq48wODQdp/BCWxbYIuiIVC1Kwp26leprL1J
 +H5yuJ9Ifl/GOQHC0Ae3M4pzUD7OJleTc9Hjeqqybq4WKfyId0Qfqym6WEsZpCL4xqJQ
 ULuEnWKuWWDpkeSijMESSqcVyMvv9O8Y2Aeg+pUyYPgx8NvoNqMwkvKzGmJlZmDJqz4k
 1UBQ==
X-Gm-Message-State: APjAAAWQYhtylup41LjrHz/6D5pD230H2cw6s6uJ6jR+TGN59cWMewRL
 ler678Mw1HWEcxGPrN1m3UEgzuiqgb2RlycBPvCBZ+ZQWHKcGBg+y5MRCMS+h63RUNSBlHH1RtX
 I5LM1eysj0J6VHzhgFUwn
X-Received: by 2002:aa7:9f08:: with SMTP id g8mr55602064pfr.59.1574972737771; 
 Thu, 28 Nov 2019 12:25:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqxZd0aFye0vSy1NxsGtsRRJBkuncMDWAD+zRH7F+esJn7Za4gqNzi7+zhDEogE6OWw66etLDg==
X-Received: by 2002:aa7:9f08:: with SMTP id g8mr55602046pfr.59.1574972737583; 
 Thu, 28 Nov 2019 12:25:37 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id 21sm22106551pfy.67.2019.11.28.12.25.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:25:36 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] Documentation/vmcoreinfo: Add documentation for
 'MAX_PHYSMEM_BITS'
Date: Fri, 29 Nov 2019 01:55:15 +0530
Message-Id: <1574972716-25858-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
References: <1574972716-25858-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: ppjket8AP7OR_iaWDHnL2Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122544_680701_47F518F1 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
