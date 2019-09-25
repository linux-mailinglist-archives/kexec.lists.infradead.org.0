Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03D21BE163
	for <lists+kexec@lfdr.de>; Wed, 25 Sep 2019 17:34:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vw+AEN05QpNAAFW9vn/PzfW0G/UyIEFF9rCrOIy3kzY=; b=YVjOGKaQP/Hp3i
	2+m2CgbBYUAWOg6g5R5xdcl6Qx3692exdUy0UKYDHZwYNo+xdnq+4SupdLAC6ePVp/6A3ptcbAzpb
	36D1DmF61A0Ub+awVaNpcXjbNukE7qO+bcrRl3/poBWJex79aFvqc0eOxoSpuyvjVjEUd+hluejY8
	hERJPL3iFBbWbAADYWvUP4ErjR5WCorTsg7tBw76E2t8lwJUsCO/dKXgvY+IP2/JLHcQANO7Mf1fg
	9V+9GLKpcyLEKsAbQtn+RDi+ho81GzWUSx5L1CWtu3nJtSxDlhtM2UNnP/p/5c41tbMT/6sZCdRtC
	fDfXkcUwxCj6GuG/WQ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9Ig-0007Mm-Pr; Wed, 25 Sep 2019 15:33:54 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9I7-0007Aw-9x
 for kexec@lists.infradead.org; Wed, 25 Sep 2019 15:33:21 +0000
Received: by mail-ed1-x541.google.com with SMTP id a15so3499869edt.6
 for <kexec@lists.infradead.org>; Wed, 25 Sep 2019 08:33:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=nFhz4TvKr9xBPUOqvetSHmUbh3EQ9lCExfFxilYXCW6hELd5xrptu0jhKEK25o20EJ
 Gg+aZGbC6Gz3auQyizHzo+v1pDRbzSZjr1eDys1u37dLQaCrZdDdJ7Z0zkaQF6vDrLjU
 Rqvk3/vbAa2BoNNPP5rnqdkP951jp2KtC72hcQN5nt5FnqwwEvmCwCIV1r794Dgcm+sY
 wjeInu9jOq1/8eyq2q4W/yCVWbeCOWtbiByMG+RIeAEvFhOIqJqxZh4I46CGvYENVgsO
 iQ3SXRlCmb9r1A4+GTrR0Wacrn49h/SVnBHVwSV6/h/Sm65vGxPsrAdXBKbChI83A2fx
 tUBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xXF8fOz68zu8jSsi2oLIZNjcKNSoQ5Q7ICUWMBhW7DM=;
 b=O7Xngbpq7yv1Z0rrD2aB4D7cuobFhXcuJ17G7jI+RXzdGe8I6rsbi+yH5dp2xDplyc
 VSp5iqX5RItPaz/njJvwyDA+gRmbNJYsLZpxqSAWc2O42lWZ1TtG/39MKsA//sYyNUqv
 lXRGc61/f+XojEjBpXKPMQeFxNeNrWfVf71TshCyI14N0fvikRS7Meo9WvrNLSP/sfeI
 sgHt2c+jHGMB7GqL2O7THipz2x+FDJ4b3PT8NKnZ6FQxYFUytC7ExFE/M9QfKU15m3lv
 56iGKKzFj04dfRnOmAsKnL3CM3BVCllBFGvpl2HbIOKoyXRP4bnPHXnNEpstMp0NPZKs
 D/qA==
X-Gm-Message-State: APjAAAUVCbcJS+xISo9ZnkJ/5IkWoM8qxHJQQP6tZpQfBQT2w41bQJeD
 U7mF7/ZCyGMl2f0obhFrqB/YG5b7V3B3CStrBVBEew==
X-Google-Smtp-Source: APXvYqxX489cqrkLHt3Qn91y6+7hXWDB8tLdECyqKNPDtfNZ49G/iag+TIVI/SOqZQbaXZn2k9NWW+dNMN7NIGCwum8=
X-Received: by 2002:a05:6402:1ade:: with SMTP id
 ba30mr3673543edb.304.1569425596583; 
 Wed, 25 Sep 2019 08:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
 <20190923203427.294286-2-pasha.tatashin@soleen.com>
 <20190925060445.GA30921@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190925060445.GA30921@dhcp-128-65.nay.redhat.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 25 Sep 2019 11:33:05 -0400
Message-ID: <CA+CK2bBscWKpQ43jjzaN33wHm5m7W8ZGiW7YCTE+Syzu2ZunoQ@mail.gmail.com>
Subject: Re: [PATCH v5 01/17] kexec: quiet down kexec reboot
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_083319_761839_AB14B8E2 
X-CRM114-Status: UNSURE (   4.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> Acked-by: Dave Young <dyoung@redhat.com>

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
