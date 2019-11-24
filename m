Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4790E1083D1
	for <lists+kexec@lfdr.de>; Sun, 24 Nov 2019 15:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:
	Message-ID:From:Date:To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ANM22AvVpUbZQTN6peQnCZIspPzUUjm337/CuLzYAmo=; b=JlN
	3H18JzsxMrPGI7rWlU4Z+MjtNDszCpLHjmB/KpRSOmBnffJElq41RXWkvTDichcsvhiMBgzDFxK0E
	brGkJ7eVoTfbRQFgTVSnb10SeNJaGfVCnx/QjVzweJygfzgVpzimP9aHdY7X8gqcVWgt/njJa3QUC
	C1C9g6VgRDcsrOtYfSKtAErrjBtuEUFZGQp/H1HRU4uTRN505TOPEJKMdOPoTYHqckIITeYD7WqdE
	awDGaPtT43K4mOCqDnqD6gpgvR0TO3O6Na8J5oeybXVqplmcH4PrQGD/BDkvMx+ZMSqEKL6PQA7J9
	XOg/LtePjPqt89cPekKAwFJAdW24v1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYstv-0003PJ-RY; Sun, 24 Nov 2019 14:30:11 +0000
Received: from sonic307-21.consmr.mail.sg3.yahoo.com ([106.10.241.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYstt-0002pi-87
 for kexec@lists.infradead.org; Sun, 24 Nov 2019 14:30:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1574605804; bh=01ClCONe88n4yZ/SLPbCOK0lf4UDSLst4PLeRULGEt4=;
 h=Date:From:Reply-To:Subject:From:Subject;
 b=Ce51U/u369XpzZUv4dMu6Gk2WFtlCHDeF86m6T1xkrs3mUfaibM3eT4eItb44i+cCS+wVqlOndaK1GIDJ84pV/SDCDH9XTPLpSCLQN44vQNtV10B4zMyBDo8ioeI+jEx7Cn7CXLGF2tpZQSpL+ToFldHJw5wf086lcs90BtnjSeOJzYb0KjgLyoHpWZ2La6CNtdyLL6Mvh8F9xBCJEI/tGBnfyaiBSfCQb5g8kiDBVEN2awKtZdAdnJe35U+gNuEM84tBWq55+APhwl4rve+1sXdsb2k9w+cHFj6QVzhuEuiOXq9Pzg/fzVIQMJRAx27ygYhroC6TAWtMevDl9Vy4A==
X-YMail-OSG: Hrxa.hwVM1lc69Z9dz1bMiJVVUJ1uivnJWj_vT5VE6YnIrwWzWEc8YBv_JYItXU
 0Zivgea5fSChzpOXzCFIOt42Sz3DHZ0CQjalwp6a4K7WZq3usdT9aJVbm99EwcA7C_H9sgdaC633
 K_XErvKasAdVp7NvqIgy3MewFLqaEi.oPdGEOG_sE1iUrXuNaHHbUqK5ZXzrjiOy5NjGb8M5F9_5
 XXcIHVaypybuKyslbBSWdDkUEKcwMf3sjOetIw7l.tJfQ.3t9u0S9Y_g6IVaOLhKd3k9X8MoDw8T
 .zoMsCx3qaKZ.LUZ9IZt0IZDZI2pMzbGl55Qm9uY_r5goxb7T7gXLpFIY_fJCH.6N2_B_pI0JFYs
 0o_7iiHVzpk77NMNrbny3D92L8Z9Gd9h2Z60Ebax1evxr9503ZIESdjIyNGKAPeNK8LbDr0O4Tq5
 kwjGBtALKkGnS9YH_P_iGiO5mJzQzlz7cAIakSbkPCQ5dZjRWt8gyKuLXwL5.nuVx4FL6bdcz9q6
 VfwJQP_MnzebmBcte9ZSHG_OGoi3r3lPc6XR0cfTKExHMjB.a7m1FCSfs95N3e.iekzydk3Mj419
 kHDqysSk64VhCO7HFbEPjhLpi2bh.z30c_5EZT5cALJdQzVrD7VMKV7ZlY.dUsVIb0bbiNe9F7O3
 GmB4lG24ngm2MO7tFqQN0UX5kwTYVpoN5RpC_VQJJ8xfcijz.3VatwZ.ZHhRkXdo8QI7yAOsxrZ.
 kT_B7JZo0UgHY6z0NjPfRWtVJI3ldsGxbUJZpixk3OK8EyEAHOkr7mvwt4F7PCoKvepIX58F_3x8
 P07ju2uSLCQGzfJKTYsk95w66IZ9dvRpXQa4Fi_IjO6OuJg_gIfSf5IlNnnwxUDdubNVPgkAueEc
 rB85wIeHN1OuqEm6ptUc7CPD5wD_GGkLRK5HDFMAo15n6jE7V4NwWjeFXwB8mMl0qS8AdfPl2pRU
 quY_P_B2AKJTdeIEzeCDU27FY3mEU62n4XN1C7rvCd._yKuStqiqJYF0bdKqjArcmsDGf15YT.QQ
 9jgF.QUgU5yS1TuhQWgXX.kS3JDF.QoEdfzY7RIFhQ7H3jbvkm8JlkETRTfooPv4kavwfHHYAAi5
 5gn9ZtkFmRIYShKiMW2Gn1SIoYuzZhLcGlFdsvKICK3B48yDZbx8fE_.8qsJKTh4WKo0JLs2bL7E
 I_JSbc0fPkW6yrjM7_3_mQMHbfa1qun1CrYj8eI26KECrJ5iPzLAasEF1POSWK5aGrSJRo56Pyao
 _PY0FlLX6OpQ9.SiMvb8eyY.eN8l0N2Q3ABUGUlsK.yl.eOpNdJ9BTMULTR0X.qrhnlhby1pA7lj
 0Lh048g--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.sg3.yahoo.com with HTTP; Sun, 24 Nov 2019 14:30:04 +0000
Date: Sun, 24 Nov 2019 13:08:50 +0000 (UTC)
From: "Mr. Joon-Kyu Lin" <johnpfox@yahoo.com>
Message-ID: <1732067427.4436150.1574600930035@mail.yahoo.com>
Subject: Venture Capital & Private Investors
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_063009_468222_0EFD1DE5 
X-CRM114-Status: UNSURE (  -0.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [106.10.241.38 listed in list.dnswl.org]
 1.2 MISSING_HEADERS        Missing To: header
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (johnpfox[at]yahoo.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.9 REPLYTO_WITHOUT_TO_CC  No description available.
 1.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service 0.0 T_HK_NAME_FM_MR_MRS    No description available.
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
Reply-To: afginvestmentbrokers@al-faisaliah.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CkF0dGVudGlvbjoKCknCoGFtwqBhbsKgaW52ZXN0b3LCoHRoYXTCoGNhbsKgcHJvdmlkZcKgZnVu
ZGluZ8KgZm9ywqBhbnnCoHZpYWJsZcKgYnVzaW5lc3PCoGlkZWHCoG9yCnZlbnR1cmUuCgpQbGVh
c2XCoGRvwqBsZXTCoG1lwqBrbm93wqBpZsKgeW91wqBoYXZlwqBmdW5kwqBtYW5hZ2VtZW50wqBh
YmlsaXRpZXMswqBjcmVkaWJsZQpwcm9qZWN0c8KgaW7CoG5lZWTCoG9mwqBmdW5kaW5nwqBvcsKg
YWR2YW5jZWTCoHN0YWdlwqBwcm9qZWN0c8KgcmVxdWlyaW5nwqBCYW5rCkd1YXJhbnRlZXMswqBM
b2Fuc8Kgb3LCoFBhcnRuZXJzaGlwLMKgSm9pbnTCoFZlbnR1cmUswqBFcXVpdHkswqB3ZcKgd291
bGTCoGJlCmRlbGlnaHRlZMKgdG/CoHdvcmvCoHdpdGjCoHlvdS4KCgpCZXN0wqBSZWdhcmRzLApN
ci7CoEpvb24tS3l1wqBMaW0KQWzCoEZhaXNhbGlhaMKgR3JvdXDCoChBRkcpClZlbnR1cmXCoENh
cGl0YWzCoCbCoFByaXZhdGXCoEludmVzdG9ycwoKLS0KKlRoaXPCoGVtYWlswqBhbmTCoGFuecKg
YXR0YWNobWVudHPCoGFyZcKgaW50ZW5kZWTCoGZvcsKgdGhlwqBuYW1lZMKgcmVjaXBpZW50c8Kg
b25seQphbmTCoGNvbnRhaW7CoGNvbmZpZGVudGlhbMKgbWF0ZXJpYWxzLsKgQW55wqB1bmF1dGhv
cml6ZWTCoGNvcHlpbmcswqByZXZpZXdpbmcsCmRpc3NlbWluYXRpb27CoG9ywqBvdGhlcsKgdXNl
wqBiecKgYW55b25lwqBvdGhlcsKgdGhhbsKgdGhlwqBuYW1lZMKgcmVjaXBpZW50c8Kgb2YKdGhp
c8KgY29tbXVuaWNhdGlvbsKgaXPCoHN0cmljdGx5wqBwcm9oaWJpdGVkLsKgSWbCoHlvdcKgcmVj
ZWl2ZWTCoHRoaXPCoGVtYWlswqBpbgplcnJvcsKgYW5kL29ywqBhcmXCoG5vdMKgYcKgbmFtZWTC
oHJlY2lwaWVudCzCoHBsZWFzZcKgbm90aWZ5wqB0aGXCoHNlbmRlcsKgKEFsCkZhaXNhbGlhaMKg
R3JvdXApwqBhbmTCoGRlbGV0ZcKgYWxswqBjb3BpZXPCoG9mwqB0aGlzwqBlbWFpbC7CoFRoYW5r
wqB5b3UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpr
ZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
