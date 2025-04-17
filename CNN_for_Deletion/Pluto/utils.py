#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Feb 16 20:21:59 2025

@author: frankconway
"""

import numpy as np


def read_complex_binary(filename, dtype=np.complex64):
    
    data = np.fromfile(filename, dtype=dtype)
    return data


def calculate_metrics(y_true, y_pred):
    """
    Calculate precision, recall, and F1-score for binary classification.
    
    Parameters:
    y_true (list/array): Ground truth labels
    y_pred (list/array): Predicted labels
    
    Returns:
    dict: Dictionary containing precision, recall, and F1-score
    """
    # Initialize counters
    true_positive = 0
    false_positive = 0
    false_negative = 0
    
    # Count TP, FP, FN
    for true, pred in zip(y_true, y_pred):
        if true == pred == 1:
            true_positive += 1
        elif true == 0 and pred == 1:
            false_positive += 1
        elif true == 1 and pred == 0:
            false_negative += 1
    
    # Calculate metrics
    precision = true_positive / (true_positive + false_positive) if (true_positive + false_positive) > 0 else 0
    recall = true_positive / (true_positive + false_negative) if (true_positive + false_negative) > 0 else 0
    f1 = 2 * (precision * recall) / (precision + recall) if (precision + recall) > 0 else 0
    
    return {
        'precision': precision,
        'recall': recall,
        'f1_score': f1
    }