Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A161AD174
	for <lists+kexec@lfdr.de>; Thu, 16 Apr 2020 22:48:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:From:Date:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5JZgevYmnxgyR/etJoASlLIECWxpM/nnl63mxu7DCeY=; b=jx4
	qtEfojk+HCYMm837Mz8ew/jetU0ep2aXHjK8zOJjYheRSqF83Rt3NNgDT5zZiGEax54W/1wwfIZzF
	wEN/qkmlt3AZ7NMMAk7Xz27SVQruAYndyXNSLDI8UMT4eXeY6Vu0Yq/8BWXlkLYueXs+SARzjDleO
	zMSqLiPDAwUPD3qMwg3aIDotRvsFnO6O85oYR05f8tes/2wEGNmXv3ys3lwopfWW/tqz9gJWo8k9B
	Xmhj1fEjK8TlYQT1uQdficKOMo3KfgK46+QLaWhasIDmDEASHaCSyl3gLeBvJnGScp21cN5JJz1mI
	raCahMGTS3c5O00ZXAgW76xKoYUnWXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPBQh-0001tY-0y; Thu, 16 Apr 2020 20:48:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBQf-0001tS-Ba
 for kexec@bombadil.infradead.org; Thu, 16 Apr 2020 20:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Subject:Message-ID:Reply-To:From:Date:Sender:To:Cc:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=; b=r89kzZqWcZFASd14sCT3EMnFLj
 IP5v+HRNU4Kz8VOXDwCgoaRSzwvFjK2zYh2fXq669n62V/cxj2NLd1IvsGX8InAz/i0Ljxsp8GfU4
 W54Vu6LrT0oOlsUZd0h7The9jRe5OuErtBxMyWoC7Y5qCUMPmzDV6dDPyiQbxNH11rYBwQeaUpx/6
 v1O7cc+X/3Qe0E5JFpMe/JCRs7jHEp0uMTHA8vN4cBHSIJRTI2EqtFbWwOzhruu3K6ObAgoDTmtYZ
 bHVMaCefKcXl/6S3ofVhVtRzmAxD1A9JSN4okysGdZJFl1thkKCBBXkPznFqeLsp48dxAMkrGmq9z
 xw6SSCyQ==;
Received: from mail.dsns.gov.ua ([194.0.148.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPBQc-0008Iv-4C
 for kexec@lists.infradead.org; Thu, 16 Apr 2020 20:48:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id 371191EC5835;
 Thu, 16 Apr 2020 23:33:44 +0300 (EEST)
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id BqO7CcgiQ5fO; Thu, 16 Apr 2020 23:33:43 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id 9015C1D43F18;
 Thu, 16 Apr 2020 23:33:32 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dsns.gov.ua 9015C1D43F18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dsns.gov.ua;
 s=1E60DAC0-2607-11E9-81E6-7A77C2B36653; t=1587069212;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 h=Date:From:Message-ID:MIME-Version;
 b=RaftkpC+obs0uW7RsQelf72vM9URBcRCt0qEhaZXZWiUAeftnlcuJxK8T8/QqDNax
 28WeoTAB8qhLDHl7A4ZRwgeUq0R+A6Zlw/5wb1sKKNj/QMDxNdrXvX5vNLYahmk3h1
 b/OmwOc9l9sg+z11vESO3xZqRh0i7SKp9XuaZBxlZp8RRmzlb8J2Ay/kGWyoa9jKDI
 EYEFaq3PMe0gYv/yqgKz6d1AhHc3GPoBeLbNg6vtu+8pPDXXK1elAclblUV4BplGyP
 +s3Y7c84OUjOyfuN8ZVlzF2oNcTru3VGl+hz1/OF0NBlfWCXp9q8obWvfY2KbGhXOK
 6UOMP6JJzLhPw==
X-Virus-Scanned: amavisd-new at dsns.gov.ua
Received: from mail.dsns.gov.ua ([127.0.0.1])
 by localhost (mail.dsns.gov.ua [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id DtwoqMqfObiP; Thu, 16 Apr 2020 23:33:32 +0300 (EEST)
Received: from mail.dsns.gov.ua (localhost [127.0.0.1])
 by mail.dsns.gov.ua (Postfix) with ESMTP id 3ED511D4374C;
 Thu, 16 Apr 2020 23:33:17 +0300 (EEST)
Date: Thu, 16 Apr 2020 23:33:17 +0300 (EEST)
From: Saleem Netanyahu <duchenko@dsns.gov.ua>
Message-ID: <1071893123.717469.1587069197171.JavaMail.zimbra@dsns.gov.ua>
Subject: Hey, how are u, can we talk?
MIME-Version: 1.0
X-Originating-IP: [45.82.223.36, 172.69.54.54]
X-Mailer: Zimbra 8.8.15_GA_3918 (zclient/8.8.15_GA_3918)
Thread-Index: PhtbYNdiUhpJ5ucRDlPyBb5vVW9now==
Thread-Topic: Hey, how are u, can we talk?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_214806_384578_9BE4067B 
X-CRM114-Status: UNSURE (  -1.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.6 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on casper.infradead.org summary:
 Content analysis details:   (2.6 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 1.6 REPLYTO_WITHOUT_TO_CC  No description available.
 2.1 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: Saleem Netanyahu <saleemnetu@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
