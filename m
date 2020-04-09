Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E021A3BF8
	for <lists+kexec@lfdr.de>; Thu,  9 Apr 2020 23:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:Message-ID:From:
	Date:Reply-To:To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=igo6ogHm4c1aKBj6goRlJywrSaVJcVLJxhtE1qV5Ijg=; b=MKdU1l48ZYo94p
	D0JVM/LlJike8t7q/uinOLnzenyECsFlfLNK7WESEfVYXKpeamKanZkrQti8i8RITdW27IvgN/eiq
	1nFpfb8d/20GigoHNEy1HjUE81QqiBDUKU1UBJvpTS80iflEpdrX0ycCrWF1S/h4Ld8qG7+UX0G4m
	RlAKluvRmqTjSJvPofuFNYUJxYYWoC3gZuChmLRCXG9go/Upyp7XIK9z0YQXM4iep0gW+c0Ck8gcE
	lSarZimfpRhf/jP6zJplUQY/WtOa/bMKqlBZo8tSRuky9wIyIbl5CPJBQ4Krnk39JvtJaPubUonmK
	YcBjSrVGy3ofH+rWPstQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMeni-0003c5-St; Thu, 09 Apr 2020 21:33:30 +0000
Received: from mail.dsns.gov.ua ([194.0.148.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMeng-0003aj-EA
 for kexec@lists.infradead.org; Thu, 09 Apr 2020 21:33:29 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id C621C1D2172E;
 Thu,  9 Apr 2020 23:01:56 +0300 (EEST)
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id aEqDQWyp4iVf; Thu,  9 Apr 2020 23:01:56 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id D1B771D2159C;
 Thu,  9 Apr 2020 23:01:54 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dsns.gov.ua D1B771D2159C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dsns.gov.ua;
 s=1E60DAC0-2607-11E9-81E6-7A77C2B36653; t=1586462515;
 bh=A1E1KEBjlfZ68nCg7oa+SUc7Zw+p0rvQJmVdL3fA0Ts=;
 h=Date:From:Message-ID:MIME-Version;
 b=JlJE6244UnfYsfBFBzgIkYkJM2kpnx85cQ56lN2JtgFz8PHkC1DvjnZOuPERj/0p3
 8y3Gzbn2DV66CuiM8VKOEowUcopQNl9Gr8tyWsNuUcrfcpGe016nyX/SfrUvMVxMN7
 mNiS67VMUt0HrpBPDzbK2dr78hS8Zj1vu0TsXxYv3SOymrNpv7t7zVKtCtE8D0Y5hQ
 rGgwn5ikOYjmt79RAkDriGsxpDqHwZ754N89eZpfhWOK4B1eIjVeLGgG4CoOWY3lVy
 hcJU8sOim/3Psb2FyiszVHJtJWoJ1MHhMMlOhEdanQoQhO2hLUXsAnZe41Vj595Ajy
 xDJlslQCaZ24Q==
X-Virus-Scanned: amavisd-new at dsns.gov.ua
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Wu63J0zYNtBr; Thu,  9 Apr 2020 23:01:54 +0300 (EEST)
Received: from mail.dsns.gov.ua (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id E91091D2171F;
 Thu,  9 Apr 2020 23:01:50 +0300 (EEST)
Date: Thu, 9 Apr 2020 23:01:50 +0300 (EEST)
From: Peter Wong <avia_duty@dsns.gov.ua>
Message-ID: <1478409122.8458.1586462510927.JavaMail.zimbra@dsns.gov.ua>
Subject: Hello
MIME-Version: 1.0
X-Originating-IP: [105.112.107.31, 172.69.253.145]
X-Mailer: Zimbra 8.8.15_GA_3918 (zclient/8.8.15_GA_3918)
Thread-Index: o9+HBHrxHt+OpcCsVyAgwT/3wckj0w==
Thread-Topic: Hello
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_143328_656860_03026825 
X-CRM114-Status: UNSURE (  -4.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.2 HK_SCAM                No description available.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



I have a lucrative business proposition involving transfer of $18.500.000.00 USD that will be of great benefit for both of us.REPLY FOR MORE DETAILS

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
