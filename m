Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF82A1EB1D8
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 00:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:Subject:To:From:Date:MIME-Version:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x6Ofp2qgny8GrBJjYsYrG67f9UqyYr6CUvMQTKpHTIQ=; b=FuTTx8AFRWhc+o
	gs6yI8rplrFxmKnvd2/qFAJEMEuHRXGd4vCPZWe8Bo1D9uxcHPr02mTN3/yQVHELd52+YsKB3RQVE
	2X0dP7kZClk/a5AjpusMAf47xtA1fQFWIBzlq8Gecxzc0T37WQjRMDcTsE3wDE7GCtqn0ZMQ2xR+J
	5lsYbezhTJDOoal417+KbOH9ZeFFs9Gsmv1CL3UITEZPsSF1huMJr2SR+KyjhgPuVJXo4+2i3FvQO
	/9E6+Zw1SeJ1b7SZ7eXZGrWJR2YjkMjVyOz8DBafx7MFcdgIBHHvehwoCaaFsTmX6ZYH5bI7+xXWg
	3T6lFIj/txp1mCShySjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jft9S-0002dn-EV; Mon, 01 Jun 2020 22:43:26 +0000
Received: from se4g-iad1.servconfig.com ([173.231.241.37])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jft9P-0002dG-Na
 for kexec@lists.infradead.org; Mon, 01 Jun 2020 22:43:24 +0000
Received: from res241.servconfig.com ([192.145.239.216])
 by se4-iad1.servconfig.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
 (envelope-from <contato@kasat.com.br>)
 id 1jft83-000ldS-EG; Mon, 01 Jun 2020 18:42:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=kasat.com.br; s=default; h=Message-ID:Subject:To:From:Date:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ed0+A8SOx+hFaIG7Gdu8Y2nWvryKSUPjzq5Oj4cLCgE=; b=KJufBOBH79/PJdzBuE2Lp2J41
 8HosxUu4M2cEDoF0FhErGxs2JmeBuCR/PohBtf+QP2D9ptHchuAN7ghy+siM2BVp20P/ALrmBdcUh
 JtEpLWKMMYlQKTKb1fdf3JwZpa0o9RjbE4efytRrizcf0wwxKft5KLGNQ/2hOg/AbxDsYsvGAvrDc
 i9KWaAVCACgvFMr55v6DAtyzkAv4SQJsRBeFziMqBdj0ZI0Gf003Ai1WPxJEs3ea+py7bp+bwbuQk
 9QozbqUgKqVDThqJhWkrio1w4MZQf56nKvi44yexWL02KZJmGo4fw+eF23MDp3uHoAY4eC5fv9N9P
 KRhbmlqiw==;
Received: from [::1] (port=56062 helo=res241.servconfig.com)
 by res241.servconfig.com with esmtpa (Exim 4.93)
 (envelope-from <contato@kasat.com.br>)
 id 1jft4X-003tkT-Gb; Mon, 01 Jun 2020 15:38:21 -0700
MIME-Version: 1.0
Date: Mon, 01 Jun 2020 15:38:21 -0700
From: Douglas McGregor <contato@kasat.com.br>
To: undisclosed-recipients:;
Subject: Did you get my last email?
Message-ID: <7888ee6bcb02ffe5e5ce1e2da8213f03@kasat.com.br>
X-Sender: contato@kasat.com.br
User-Agent: Roundcube Webmail/1.3.8
X-Get-Message-Sender-Via: res241.servconfig.com: authenticated_id:
 contato@kasat.com.br
X-Authenticated-Sender: res241.servconfig.com: contato@kasat.com.br
X-Originating-IP: 192.145.239.216
X-SpamExperts-Domain: res241.servconfig.com
X-SpamExperts-Username: 192.145.239.216
Authentication-Results: servconfig.com; auth=pass
 smtp.auth=192.145.239.216@res241.servconfig.com
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.80)
X-Recommended-Action: accept
X-Filter-ID: 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
 ayGsU+dZcUk73r6+zZJAviXhFMfhq9w7zjpo1uw=
X-Report-Abuse-To: spam@se1-lax1.servconfig.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_154323_778641_ED1A9666 
X-CRM114-Status: UNSURE (  -2.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



   I have been trying to reach you, is this email still active? I have 
something important to discuss with you. Please get back to me as soon 
as you can.

A. Douglas McGregor

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
